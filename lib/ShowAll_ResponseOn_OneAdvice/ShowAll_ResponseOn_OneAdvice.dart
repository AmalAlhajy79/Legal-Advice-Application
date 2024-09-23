
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/TextUtils.dart';
import '../component/constant.dart';
import 'ShowAll_ResponseOn_OneAdvice_controller.dart';

class ShowAll_ResponseOn_OneAdvice extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);

  @override
  State<ShowAll_ResponseOn_OneAdvice> createState() => _ShowAll_ResponseOn_OneAdviceState();
}

class _ShowAll_ResponseOn_OneAdviceState extends State<ShowAll_ResponseOn_OneAdvice> {
  ShowAll_ResponseOn_OneAdviceController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerScrimColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor:  Colors.black54,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed('/showAllUserAdvice');
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
                      padding: const EdgeInsets.only(right: 5,top: 10),
                      child: TextUtils(
                        text: ': جميع الردود على استشارتك',
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        colorText: Colors.black87,
                      ),
                    ),
                    SizedBox(),
                    Expanded(
                      child:
                          Obx(() {
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

                                padding: EdgeInsets.only(bottom: 20,top: 20,right: 30,left: 30),
                                itemCount:controller.details.replies!.isEmpty ? 0 : controller.details.replies!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return
                                    Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(color: Colors.grey),
                                        boxShadow: [
                                          BoxShadow(
                                            color:Color.fromRGBO(122, 10, 250, 1), //Colors.black54,
                                            blurRadius: 2,
                                          ),

                                        ],
                                      ),
                                      child: Container(
                                        //  margin: EdgeInsets.all(5),
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                 mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      TextUtils(

                                                         text:' ${ controller.details.replies![index].provider.firstName}  ${controller.details.replies![index].provider.lastName}',
                                                          fontWeight:FontWeight.bold,
                                                          fontSize:20.0,
                                                          colorText:Colors.lightGreen,//Color.fromRGBO(122, 10, 250, 1),//Colors.blue,
                                                          underLine:TextDecoration.none),
                                                    //  SizedBox(width:2,),
                                                      TextUtils(
                                                          text:' : المحامي',
                                                          fontWeight:FontWeight.bold,
                                                          fontSize:20.0,
                                                          colorText:Colors.lightGreen,//Color.fromRGBO(122, 10, 250, 1),//Colors.blue,
                                                          underLine:TextDecoration.none),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Divider(height: 5,color: Colors.black),
                                                  SizedBox(height: 5,),
                                                  TextUtils(
                                                     text:'   ${ controller.details.replies![index].provider.phone} : الهاتف  ',
                                                      fontWeight:FontWeight.normal,
                                                      fontSize:20.0,
                                                      colorText:Colors.black87,
                                                      underLine:TextDecoration.none),
                                                  SizedBox(height: 15,),
                                                  TextUtils(

                                                    text:'  ${ controller.details.replies![index].provider.email} : الايميل    ',
                                                      fontWeight:FontWeight.normal,
                                                      fontSize:20.0,
                                                      colorText:Colors.black87,
                                                      underLine:TextDecoration.none),
                                                  SizedBox(height: 5,),
                                                  //  Divider(height: 5,color: Colors.grey),
                                                  SizedBox(height: 5,),
                                                  Row(
                                                   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      TextUtils(

                                                          text:' ${ controller.details.replies![index].provider.address} : العنوان  ',
                                                          fontWeight:FontWeight.normal,
                                                          fontSize:20.0,
                                                          colorText:Colors.black87,
                                                          underLine:TextDecoration.none),
                                                      SizedBox(width: 85,),
                                                      TextUtils(

                                                          text:' ${ controller.details.replies![index].provider.rate} : النقاط   ',
                                                          fontWeight:FontWeight.normal,
                                                          fontSize:20.0,
                                                          colorText:Colors.black87,
                                                          underLine:TextDecoration.none),
                                                    ],
                                                  ),

                                                  SizedBox(height: 3,),
                                                  Divider(height: 5,color: Colors.black87),
                                                  SizedBox(height: 3,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children:  [

                                                      Expanded(

                                                        child:  Center(
                                                          child: ReadMoreText(
                                                            ' ${ controller.details.replies![index].reply}   ',
                                                            //    'اريد ان اطلب استشارة تتتتتتتتتتlllllllllllllllllllllllتتتffffffffffffffffffffffffffffffffتتتتتتتتتllllllllllllllllllllllllllllllllllllll' ,
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
                                                              fontSize: 19,
                                                              height: 2,
                                                              color: Colors.black87,
                                                            ),

                                                          ),
                                                        ),
                                                      ),
                                                     SizedBox(width: 10,),
                                                      TextUtils(
                                                          text:' : الرد ',
                                                          fontWeight:FontWeight.bold,
                                                          fontSize:20.0,
                                                          colorText:Colors.black87,
                                                          underLine:TextDecoration.none),
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
                                    SizedBox(height: 18),
                                //  Divider(height: 16),
                              );
                            }
                          }
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

