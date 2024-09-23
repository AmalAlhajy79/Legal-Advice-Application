import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/TextUtils.dart';
import 'Show_All_Provider_Advice_controller.dart';

class ShowAllProviderAdvice extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);

  @override
  State<ShowAllProviderAdvice> createState() => _ShowAllProviderAdviceState();
}

class _ShowAllProviderAdviceState extends State<ShowAllProviderAdvice> {
  ShowAllProviderAdviceController controller = Get.find();

  void _previewImage() {
    for (int i = 0; i < controller.details.length; i++) {
      if (controller.details[i].image != null) {
        if (kIsWeb) {
          Container(
            width: 80,
            height: 90,
            child:
            Image.asset(
              '${controller.details[i].image}', //'images/question/16836497251.png',
              fit: BoxFit.cover,
            ),
          );
        } else {
          Semantics(
              child: Image.file(File('${controller.details[i].image}')), //_imageFile!.path)),
              label: 'the image is :  ');
        }
      }
      else {
        Center(
          child: TextUtils(
              text:
              'Not found image ',
              fontSize: 20,
              fontWeight: FontWeight.normal,
              colorText: Colors.black
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerScrimColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor:  Colors.black54,
        actions: [
          IconButton(
              onPressed: () {},
              icon:
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.amberAccent.shade400,
                size: 40,
              ))
        ],
      ),


      body: Container(
        alignment: Alignment.center,
        // color: Colors.white,
        child: Stack(
         alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
              //   color: Colors.red,//grey.shade100,
              child:
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 10,right:350),
                      child:
                      TextUtils(
                          text: ' All Advice :',
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          colorText: Colors.black,
                        ),
                    ),
                    const SizedBox(height: 17,),
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        controller: ScrollController(),
                        padding: const EdgeInsets.only(right: 3,left: 3,),
                        itemCount:controller.details.isEmpty ? 0 : controller.details.length,//5,//controller.details.length, //15,
                        //15,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Container(
                            //  padding: const EdgeInsets.all(15),
                              margin:  EdgeInsets.only(right: 30,left: 30,),
                              decoration: BoxDecoration(
                               color:Colors.white,// Colors.brown.shade300,
                                borderRadius: BorderRadius.circular(15,),
                                border:Border.all(color: Colors.black,width: 1),
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 6,
                                  ),

                                ],
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                child: Stack(
                                alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(5),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [

                                          Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              TextUtils(
                                                  text:' Advice : ',
                                                  fontWeight:FontWeight.normal,
                                                  fontSize:20.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none),
                                              SizedBox(width: 20,),
                                              Expanded(

                                                child:  ReadMoreText(
                                                  '${controller.details[index].question}',
                                                  //    'اريد ان اطلب استشارة تتتتتتتتتتlllllllllllllllllllllllتتتffffffffffffffffffffffffffffffffتتتتتتتتتllllllllllllllllllllllllllllllllllllll' ,
                                                  trimLines: 1,
                                                  textAlign: TextAlign.justify,
                                                  trimMode: TrimMode.Line,
                                                  trimCollapsedText: 'see more',
                                                  trimExpandedText: 'see few',
                                                  lessStyle: const TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  moreStyle: const TextStyle(
                                                    //   fontWeight: FontWeight.bold,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 19,
                                                    height: 2,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Divider(height: 5,color: Colors.blueGrey),
                                          SizedBox(height: 13,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils(
                                                  text:' picture : ',
                                                  fontWeight:FontWeight.normal,
                                                  fontSize:20.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none),
                                              SizedBox(width: 10,),
                                              Container(
                                                width: 100,
                                                height: 90,
                                                decoration: BoxDecoration(
                                                   // borderRadius:
                                                   // BorderRadius.circular(10),
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    left: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    right: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    bottom: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                  ),
                                                  //    color: Colors.black54,
                                                ),
                                                child:
                                                Image.network(
                                                 'http://127.0.0.1:8000/'+'${controller.details[index].image}', //'images/question/16836497251.png',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              SizedBox(width: 160,),
                                            ],
                                          ),
                                          SizedBox(height: 5,),
                                          Divider(height: 3,color: Colors.blueGrey),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Align(
                                        alignment: Alignment.bottomLeft,

                                          child: InkWell(
                                            onTap: () {
                                              Get.toNamed('/showAll_MyResponse_onUserAdvice');
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 60,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.amberAccent,
                                                  borderRadius: BorderRadius.circular(20),

                                                  //  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    const BoxShadow(
                                                        color: Colors.black54,
                                                        blurRadius: 4),
                                                  ]),
                                              child: const Text('replies'),
                                            ),
                                          ),
                                        ),

                                        const SizedBox(width: 15,),
                                        Align(
                                          alignment: Alignment.bottomCenter,

                                          child: InkWell(
                                            onTap: () {
                                              Get.toNamed('/add_Respons_onAdviceFromMoham');
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 65,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius: BorderRadius.circular(20),

                                                  //  shape: BoxShape.circle,
                                                  boxShadow: [
                                                    const BoxShadow(
                                                        color: Colors.black54,
                                                        blurRadius: 4),
                                                  ]),
                                              child: const Text('Add reply'),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 19,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 200,
            // ),
          ],
        ),
      ),
    );
  }
}
