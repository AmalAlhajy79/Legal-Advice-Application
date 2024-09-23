import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../config/server_config.dart';
import 'ShowAllUserAdvice_model.dart';

class ShowAllUserAdviceService{

  // var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.ShowAllUserAdv);

  Future<List<Detailll>> showAllUser_Advice()async{
    print("eeeeeeeeeeeeeeeeeeeeee");
    var response=await http.post(
      url,
      body: {
        'user_id':'31',//'31'//'14',//30
      },
    );
    print('*********************************');
    //print(response.statusCode);
    print(response.body);
    print('********************************');
    var x;
    //  PickedFile? _imageFile;
    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
      print("-------------Replay-----------");
    print(jsonResponse["details"][0]["category"]["name"]);
      print('http://127.0.0.1:8000/'+"${ jsonResponse["details"][0]["image"]}");
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww \n"+
          // jsonResponse["details"]["id"]+
          "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
      // print(jsonResponse["ااااااااااااااا"]);
     print(jsonResponse["details"][0]["question"]);
      print(jsonResponse["details"][0]["image"]);
      var detals= showAllUserAdviceModelFromJson(response.body);
      return detals.details;
    }
   else{
      print("** error in server or field **");
      //message='server error';
      return [];

    }
  }
}
