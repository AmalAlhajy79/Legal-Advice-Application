import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:lawer_project_lasttt/hagz/hagzModel.dart';

import '../config/server_config.dart';

class HagzService{

  // var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.showAllProviderAdv);

  Future<List<Detaillll>> showAllProvider_Advic()async{
    print("eeeeeeeeeeeeeeeeeeeeee");
    var response=await http.post(
      url,
      body: {
        'provider_id':'8',
      },
    );
    print('*********************************');
    //print(response.statusCode);
    print(response.body);
    print('********************************');
    var x;
    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);/////////////////////////////////
      print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
      print("-------------Replay-----------");
      print(jsonResponse["details"][0]["image"]);////////////////////////////////////////////
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ");
      // print(jsonResponse["ااااااااااااااا"]);
      print(jsonResponse["details"][0]["question"]);////////////////////////////////////////////
      //
      var detals= showAllProviderAdviceModelFromJson(response.body);
      return detals.details;
    }
    else{
      print("** error in server or field **");
      //message='server error';
      return [];

    }
  }
}
