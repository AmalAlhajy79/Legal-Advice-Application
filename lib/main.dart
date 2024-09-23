import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:lawer_project_lasttt/exampllllllll/test4.dart';
import 'package:lawer_project_lasttt/exampllllllll/test5.dart';
import 'package:lawer_project_lasttt/submit/submit.dart';
import 'package:lawer_project_lasttt/submit/submit_binding.dart';

import 'Add_Respons_onAdviceFromMohamy/Add_Respons_onAdviceFromMohamy.dart';
import 'Add_Respons_onAdviceFromMohamy/Add_Respons_onAdviceFromMohamy_binding.dart';
import 'Add_User_Advice/Add_User_Advice.dart';
import 'Add_User_Advice/Add_User_Advice_binding.dart';
import 'ShowAll_MyResponse_onUserAdvice/ShowAll_MyResponse_onUserAdvice.dart';
import 'ShowAll_MyResponse_onUserAdvice/ShowAll_MyResponse_onUserAdvice_binding.dart';
import 'ShowAll_ResponseOn_OneAdvice/ShowAll_ResponseOn_OneAdvice.dart';
import 'ShowAll_ResponseOn_OneAdvice/ShowAll_ResponseOn_OneAdvice_binding.dart';
import 'ShowAll_UserAdvice/ShowAll_UserAdvice.dart';
import 'ShowAll_UserAdvice/ShowAll_UserAdvice_binding.dart';
import 'Show_All_Provider_Advice/Show_All_Provider_Advice.dart';
import 'Show_All_Provider_Advice/Show_All_Provider_Advice_binding.dart';
import 'exampllllllll/test3.dart';

void main() {
  runApp(
    GetMaterialApp(debugShowCheckedModeBanner: false,
    initialRoute: '/addUserAdvice',
    getPages: [
      GetPage(name: '/add_Respons_onAdviceFromMoham', page: ()=> Add_Respons_onAdviceFromMohamy(), binding: Add_Respons_onAdviceFromMohamyBinding()),
      GetPage(name: '/showAll_MyResponse_onUserAdvice', page: ()=> ShowAll_MyResponse_onUserAdvice(), binding: ShowAll_MyResponse_onUserAdviceBinding()),
      GetPage(name: '/showAll_ResponseOn_OneAdvice', page: ()=> ShowAll_ResponseOn_OneAdvice(), binding: ShowAll_ResponseOn_OneAdviceBinding()),
      GetPage(name: '/showAllProviderAdvice', page: ()=> ShowAllProviderAdvice(), binding: ShowAllProviderAdviceBinding()),
      GetPage(name: '/AppointmentPage', page: ()=> AppointmentPage(), binding: SubmitBinding()),
      GetPage(name: '/showAllUserAdvice', page: ()=> ShowAllUserAdvice(), binding: ShowAllUserAdviceBinding()),
      GetPage(name: '/addUserAdvice', page: ()=> AddUserAdvice(), binding: AddUserAdviceBinding()),
    //  GetPage(name: '/AddAdviceFromUser', page: ()=> AddAdviceFromUser(), binding: AddUserAdviceBinding()),
    // GetPage(name: '/ShwAllUsAdvice', page: ()=> ShwAllUsAdvicee(), binding: ShowAllUserAdviceBinding()),

    ],
   builder: EasyLoading.init(),
  ),
  );
}

