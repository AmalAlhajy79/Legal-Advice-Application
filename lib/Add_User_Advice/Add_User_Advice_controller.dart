import 'package:get/get.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:lawer_project_lasttt/Add_User_Advice/Add_User_Advice_service.dart';
class AddUserAdviceController extends GetxController {
  int user_id= 0;
  String image= '';
  String question= '';
  int category_id= 0;
  var addUserAdvice_Status = false;
  var message;
  PickedFile? pickFile;
  PickedFile? get pickedFile=>pickedFile;
var _isLoading=true.obs;
  AddUserAdviceService service = AddUserAdviceService();
var _imagePath='';

  Future<void> addUserAdviceOnClicked() async {
//if( question!= null ) {
 // addUserAdvice_Status = await service.add_User_Advice(question, image);
  http.StreamedResponse response = await service.add_User_Advice(question,pickFile);
  _isLoading(false);
  if (response.statusCode == 200) {
    Map map = jsonDecode(await response.stream.bytesToString());
    String messagee = map["message"];
    _imagePath=messagee;
    // _pickedFile = null;
    //await getUserInfo();
    print(messagee);
  } else {
    print("error posting the image");
  }
  update();

//}else{
  message = service.message;
  if (message is List) {
    String temp = '';
    for (String s in message) {
      temp += s + '\n';
    }
    message = temp;
  }
//}
  }
  // Future<void> upload() async {
  //
  //   http.StreamedResponse response = await service.add_User_Advice(question,_pickedFile);
  //   _isLoading(false);
  //   if (response.statusCode == 200) {
  //     Map map = jsonDecode(await response.stream.bytesToString());
  //     String message = map["message"];
  //     _imagePath=message;
  //     // _pickedFile = null;
  //     //await getUserInfo();
  //     print(message);
  //   } else {
  //     print("error posting the image");
  //   }
  //   update();
  //
  // }
}
