
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../component/TextUtils.dart';
import '../component/constant.dart';
import 'ShowAll_MyResponse_onUserAdvice_controller.dart';
class ShowAll_MyResponse_onUserAdvice extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);

  @override
  State<ShowAll_MyResponse_onUserAdvice> createState() => _ShowAll_MyResponse_onUserAdviceState();
}

class _ShowAll_MyResponse_onUserAdviceState extends State<ShowAll_MyResponse_onUserAdvice> {
  ShowAll_MyResponse_onUserAdviceController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerScrimColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor:  Colors.black54,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/showAllProviderAdvice');
              },
              icon:
              Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.amberAccent,
                size: 40,
              ))
        ],
      ),

      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        // color: Colors.white,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
              //   color: Colors.red,//grey.shade100,
              child:
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5,top: 10,bottom: 20),
                      child: TextUtils(
                        text: ': جميع ردودك على الاستشارة',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.black,
                      ),
                    ),
                    SizedBox(),
                    Expanded(
                      child:Obx((){
                        if(controller.isLoding.isTrue){
                          return Center(
                            child: CircularProgressIndicator(
                              color: white,
                              strokeWidth:5,
                            ),
                          );
                        }
                        else{
                          return  ListView.separated(


                            scrollDirection: Axis.vertical,
                            controller: ScrollController(),

                            padding: EdgeInsets.all(5),
                            itemCount:controller.details.isEmpty ? 0 : controller.details.length,//5,//controller.details.length, //15,
                            itemBuilder: (BuildContext context, int index) {
                              return
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,//.shade300,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.amberAccent,width: 1),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 6,
                                      ),

                                    ],
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              TextUtils(
                                                  text:'${controller.details[index].questionId}   : الاستشارة رقم',
                                                  fontWeight:FontWeight.bold,
                                                  fontSize:22.0,
                                                  colorText:Colors.amberAccent,
                                                  underLine:TextDecoration.none),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children:  [

                                                  Expanded(

                                                    child:  Center(
                                                      child: ReadMoreText(
                                                       // 'أريد أن أنصحك  بأن لا تتطلق يا صديقي اسأل مجرب و لا تسأل حكيم   ',
                                                     '${controller.details[index].reply}',
                                                        trimLines: 3,
                                                        textAlign: TextAlign.justify,
                                                        trimMode: TrimMode.Line,
                                                        trimCollapsedText: 'رؤية المزيد',
                                                        trimExpandedText: 'رؤية القليل ',
                                                        lessStyle: TextStyle(
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        moreStyle: TextStyle(
                                                        fontWeight: FontWeight.normal,
                                                          color: Colors.blueGrey,
                                                        ),
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.normal,
                                                          fontSize: 20,
                                                          height: 2,
                                                          color: Colors.black,
                                                        ),

                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                            },
                            separatorBuilder: (BuildContext context, int index) =>
                                SizedBox(height: 16,)
                               // Divider(height: 16),
                          );
                        }
                      }),


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

