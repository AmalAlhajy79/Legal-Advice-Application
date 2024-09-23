import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config/server_config.dart';
import 'ShowAll_ResponseOn_OneAdvice_Model.dart';

class ShowAll_ResponseOn_OneAdviceService{

  // var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.showAll_ResponseOn_OneAdvi);

  Future showAll_ResponseOn_OneAdvi()async{
    print("eeeeeeeeeeeeeeeeeeeeee");
    var response=await http.post(
      url,
      body: {
        'question_id':'34',
      },
    );
    print('*********************************');
    //print(response.statusCode);
    print(response.body);
    print('********************************');

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);/////////////////////////////////
      //message=jsonResponse['details'];
      print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
      print("-------------Replay-----------");
     print(jsonResponse["details"]["replies"]);////////////////////////////////////////////
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww \n"+
          // jsonResponse["details"]["id"]+

          "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
      print(jsonResponse["details"]["replies"][0]);
      print("++++++ reply ++++++");
      print(jsonResponse["details"]["replies"][0]["reply"]);
      print("++++++ provider ++++++");
      print(jsonResponse["details"]["replies"][0]["provider"]);
      print("++++++ provider  first_name ++++++");
      print(jsonResponse["details"]["replies"][0]["provider"]["first_name"]);
      print("++++++ provider  phone ++++++");
     print(jsonResponse["details"]["replies"][0]["provider"]["phone"]);
   //   print(jsonResponse["details"]["replies"][0]["provider"]["rate"]);
      print(jsonResponse["ااااااkjljjjjjjllllllllllllllllااااااااا"]);

       var detals=showAllResponseOnOneAdviceModelFromJson(response.body);
      print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAa");
      return detals.detailss;
    }
    else{
      //message='server error';
      print("** error in server or field **");
      return showAllResponseOnOneAdviceModelFromJson(response.body).detailss;

    }
  }
}
