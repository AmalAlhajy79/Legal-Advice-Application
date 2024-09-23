import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class SubmitController extends GetxController {
   String provider_id='';
   String user_id='';
   String time='';
       String date='';
   Future<void> submit(
      var provider_id,
     var user_id,
      var time,
     var date,
  ) async {
    print(provider_id);
    print(user_id);
    print(time);
    print(date);
    print("in sub");
    var response= await http.post(
      // Uri.parse('http://192.168.137.30:8000/api/reserve'),
        Uri.parse('http://127.0.0.1:8000/api/reserve'),
        body: <String,String>{
          'provider_id': '$provider_id',
          'user_id':'$user_id',
          'time':'$time',
          'date': '$date',
        }
    );
    if(response.statusCode==200){
      //Get.toNamed('/home');
      print("yyyyyyyyyyyyyyyyyyeeeeeeeeeessssssss");
    }
    else{
      Get.snackbar('error', '',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);

      print("sorry");
    }
    print("in ");
  }

}