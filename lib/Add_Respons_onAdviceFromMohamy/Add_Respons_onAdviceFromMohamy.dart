
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lawer_project_lasttt/Add_Respons_onAdviceFromMohamy/Add_Response_onAdviceFromMohamy_Controller.dart';

import '../component/TextUtils.dart';
import '../component/custom_TextField.dart';


class Add_Respons_onAdviceFromMohamy extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);
  @override
  State<Add_Respons_onAdviceFromMohamy> createState() => _ShowAllUserAdviceState();
}

class _ShowAllUserAdviceState extends State<Add_Respons_onAdviceFromMohamy> {
  Add_Respons_onAdviceFromMohamyController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerScrimColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.black54,
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
        alignment: Alignment.topRight,
        // color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16,bottom:16 ),
              child: TextUtils(
                text: 'أضف ردك على الاستشارة',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                colorText: Colors.black87,
              ),
            ),
            SizedBox(height: 45,),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 25, right: 25),
margin: EdgeInsets.only(right: 5,left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),

                    ),
                 // color: Colors.black54,
                    border: Border.all(
                        color: Colors.black87,
                        width: 1
                    )
                ),
                child: ListView(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          //grey.shade100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(60)
                            ),
                            // color: Colors.green.shade100,
                          ),
                          child:
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(height: 40,),
                                Container(
                                  //  color: Colors.red,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [

                                      SizedBox(
                                        height:86,
                                      ),
                                      CustomTextField(
                                        height:180,

                                        whidth: MediaQuery.of(context).size.width*0.70,
                                        hintText: '                اكتب الرد هنا من فضلك        ',
                                        Keyboard: TextInputType.text,

                                        onChange: (value){
                                         controller.reply=value;
                                         print("value"+value);
                                        },
                                      ),
                                      SizedBox(height: 190),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                        ),
                        //   SizedBox(height: 50,),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Align(

                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                onClickedadd_Respons_onAdviceFromMohamy();
                                print("You Tap in button");
                              },
                              child: Container(
                                height: 60,
                                width: 140,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(20),

                                    //  shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 6),
                                    ]),
                                child: TextUtils(
                                    colorText: Colors.amberAccent,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    text: "ارسال الرد",
                                    underLine: TextDecoration.none
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 4,)
          ],
        ),
      ),
    );
  }
  void onClickedadd_Respons_onAdviceFromMohamy() async{
    EasyLoading.show(status: 'Loading...');
    await controller.add_Respons_onAdviceFromMohamyOnClicked();
  //  print("gggggggggggggggggg");
    if(controller.Add_ResponseStatus){
      EasyLoading.showSuccess("success.."); //EasyLoading.showSuccess(controller.message);
    Get.toNamed('/showAllProviderAdvice');
    }
    else{
      EasyLoading.showError(controller.message,duration: Duration(seconds: 5),dismissOnTap: true);
      print('erroooooooooooor here');
    }
  }
}

