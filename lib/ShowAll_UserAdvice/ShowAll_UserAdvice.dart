import 'dart:io';
import 'package:mime/mime.dart';
import 'package:flutter/foundation.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../component/TextUtils.dart';
import 'ShowAll_UserAdvice_controller.dart';


class ShowAllUserAdvice extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);

  @override
  State<ShowAllUserAdvice> createState() => _ShowAllUserAdviceState();
}

class _ShowAllUserAdviceState extends State<ShowAllUserAdvice> {
  ShowAllUserAdviceController controller= Get.find();
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
                color: Colors.amberAccent,
                size: 40,
              ))
        ],
      ),
      body:
      Container(
        alignment: Alignment.center,
        // color: Colors.white,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom:10),
              //   color: Colors.red,//grey.shade100,
              child:
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 10,right:350),
                      child: TextUtils(
                        text: 'My Advices : ',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 18,),
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        controller: ScrollController(),

                        padding: EdgeInsets.only(right: 3,left: 3,),
                        itemCount:controller.details.isEmpty ? 0 : controller.details.length,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Container(
                             // padding: EdgeInsets.all(2),
                              margin: EdgeInsets.only(right: 30,left: 30,),
                              decoration: BoxDecoration(
                                color: Colors.white,//brown.shade300,
                                borderRadius: BorderRadius.circular(15),
                                border:Border.all(width: 1,color: Colors.black,),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 6,
                                  ),

                                ],
                              ),
                              child: Container(
                                margin: EdgeInsets.all(12),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(13), // to put space between button and aother item in card
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 25,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:  [
                                              TextUtils(
                                                  text:'  Advice type : ',
                                                  fontWeight:FontWeight.normal,
                                                  fontSize:21.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none),
                                          SizedBox(width: 20,),
                                              Expanded(

                                                child:        TextUtils(

                                                    text:'${controller.details[index].category.name}',
                                                    fontWeight:FontWeight.normal,
                                                    fontSize:20.0,
                                                    colorText:Colors.black87,
                                                    underLine:TextDecoration.none),
                                              ),

                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Divider(height: 3,),
                                          SizedBox(height: 4,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              TextUtils(
                                                  text:' The Advice : ',
                                                  fontWeight:FontWeight.normal,
                                                  fontSize:21.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none),
                                              SizedBox(width: 18,),
                                              Expanded(

                                                child:  ReadMoreText(
                                                  '${controller.details[index].question}',
                                                  trimLines: 1,
                                                  textAlign: TextAlign.justify,
                                                  trimMode: TrimMode.Line,
                                                  trimCollapsedText: ' see more ',
                                                  trimExpandedText: ' see few ',
                                                  lessStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.brown,
                                                  ),
                                                  moreStyle: TextStyle(
                                                      fontWeight: FontWeight.normal,
                                                    color: Colors.amberAccent,
                                                  ),
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 19,
                                                    height: 2,
                                                    color: Colors.black,
                                                  ),

                                                ),
                                              ),

                                            ],
                                          ),
                                          SizedBox(height: 4,),
                                          Divider(height: 5,),
                                          SizedBox(height: 6,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextUtils(
                                                  text:' Picture :',
                                                  fontWeight:FontWeight.normal,
                                                  fontSize:21.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none
                                              ),
      SizedBox(width: 5,),

      Container(
  width: 140,
  height: 85,
  decoration: BoxDecoration(
    // borderRadius:
    // BorderRadius.circular(12),
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
  // Obx((){
  //  if(controller.isLoding==true)
  //     return CircularProgressIndicator(color: Colors.blue,backgroundColor: Colors.blue,);
  //   return
  //     Semantics(
  //   label: 'image_picker_example_picked_image',
  //   child: kIsWeb
  //       ?
  //
  //   ClipOval(
  //     child:
  //     //     Image.network(
  //     //   AppConstants.BASE_URL + controller.prof.orphan!.photo!,
  //     //   fit: BoxFit.fill,
  //     //   height: 111,
  //     //   width: 111,
  //     // )
  //     CachedNetworkImage(
  //       imageUrl: 'http://127.0.0.1:8000/'+'${controller.details[index].image}',
  //       placeholder: (context, url) =>
  //       const CircularProgressIndicator(),
  //       errorWidget: (context, url, error) =>
  //       const Icon(Icons.error),
  //       // httpHeaders: {
  //       //   "Content-Type": "application/json",
  //       //   "Accept": "application/json",
  //       //   "Authorization": "Bearer ${AppConstants.TOKEN}"
  //       // },
  //       fit: BoxFit.fill,
  //       width: 133,
  //       height: 133,
  //     ),
  //   )
  //   // Container(
  //   //   color: Colors.blue,
  //   //     child://FadeInImage(
  //   //       // image: NetworkImage(
  //   //       //     'http://127.0.0.1:8000/'+'${ controller.details[index].image}'),
  //   //        Image.network('http://127.0.0.1:8000/images/question/1692362559Pic1.jpg'),
  //   //    // ),// Image.network("http://127.0.0.1:8000/images/question/1692362559Pic1.jpg",fit: BoxFit.fill),//'http://127.0.0.1:8000/'+'${ controller.details[index].image}',scale: 1,)
  //   // )
  //       : Text("Not Choosen Image "),//(mime == null || mime.startsWith('image/')
  //
  // );
  // }),
  Semantics(
    label: 'image_picker_example_picked_image',
    child: kIsWeb
        ?
      Image.network('http://127.0.0.1:8000/'+'${controller.details[index].image}',scale: 1,fit: BoxFit.cover,)
        : Text("Not Choosen Image "),//(mime == null || mime.startsWith('image/')

  ),
    ),
                                              SizedBox(width: 35,),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Align(
                                      alignment: Alignment.topLeft,

                                      child: InkWell(
                                        onTap: () {
                                          Get.toNamed('/showAll_ResponseOn_OneAdvice');
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.white70,
                                              borderRadius: BorderRadius.all(Radius.circular(8)),
                                             // shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black54,
                                                    blurRadius: 6),
                                              ]),
                                          child: TextUtils(text: 'الرد',fontSize: 16,fontWeight: FontWeight.bold,colorText: Colors.black),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            SizedBox(height:2,),
                            //Divider(height: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 70,
              child: FloatingActionButton(
                backgroundColor: Colors.black54,
                child:Icon(Icons.add,size: 45,color: Colors.amberAccent),
                onPressed: () {
                  Get.toNamed('/addUserAdvice');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

