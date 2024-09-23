import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import '../config/server_config.dart';

class AddUserAdviceService{
var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.addUser_Advice);

  Future<http.StreamedResponse>  add_User_Advice(String question, PickedFile? data)async{
   // // print("eeeeeeeeeeeeeeeeeeeeee");
   //  var response=await http.post(
   //    url,
   //    headers: {
   //      'Accept':'application/json',
   //    },
   //    body: {
   //      'user_id':'33',//'33',//14,//'30',
   //      'question':'$question',
   //      'category_id':'1',
   //      'image':'$data',
   //    },
   //  );
    http.MultipartRequest request = http.MultipartRequest('POST',url);
    if(GetPlatform.isMobile && data != null) {
      File _file = File(data.path);
      request.files.add(http.MultipartFile('image', _file.readAsBytes().asStream(), _file.lengthSync(), filename: _file.path.split('/').last));
    }
    Map<String, String> _fields = Map();
    _fields.addAll(<String, String>{
      'user_id':'36',//'33',//14,//'30',
      'question':'$question',
      'category_id':'1',
      'image':'$data',
    });
    request.fields.addAll(_fields);
     http.StreamedResponse response = await request.send();

    print('*********************************');
    //print(response.statusCode);
    print(response);
    print('********************************');

    if(response.statusCode==200){
    //  var jsonResponse = jsonDecode(response);/////////////////////////////////
      //message=jsonResponse['details'];
      print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
   //   print(jsonResponse["details"]);////////////////////////////////////////////
      print("ااااااااااااااا");
   //   print(jsonResponse["details"]);////////////////////////////////////////////
     return response;
    }
    else{
      print("........  big error .......");
      return response;
    }

    // else if(response.statusCode==401){
    // //  var jsonResponse = jsonDecode(response.body);/////////////////////////////////////email
    //   print("eeeeeeeeeeeeeeeeerr--------------roooooooooorrrrrrrrrr------" );
    //   if(jsonResponse['question'] ==null){
    //     message=jsonResponse['question'];
    //     // print(jsonResponse['question'] );
    //   }
    //   if(jsonResponse['user_id'] !=null){
    //     message=jsonResponse['user_id'];
    //     // print(jsonResponse['user_id']);
    //
    //   }
    //   if(jsonResponse['category_id'] !=null) {
    //     message=jsonResponse['category_id'];
    //     // print(jsonResponse['category_id']);
    //   }
    //   return false;
    // }
    // else{
    //   message='server error';
    //   return false;
    //
    // }

  }

}
