import 'dart:convert';
// import 'package:firstapp/config/server_config.dart';
import 'package:http/http.dart' as http;
import 'package:lawer_project_lasttt/config/server_config.dart';

class Add_Respons_onAdviceFromMohamyService{

 var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.add_Respons_onAdviceFromMoh);

  Future<bool> add_Respons_onAdviceFromMo(String reply)async{
    print("eeeeeeeeeeeeeeeeeeeeee");
    var response=await http.post(
      url,
      headers: {
        'Accept':'application/json',
      },
      body: {
        'question_id':'34',
        'provider_id':'1',
        'reply':'$reply',
      },
    );
    print('*********************************');
   //print(response.statusCode);
    print(response.body);
    print('********************************');

    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      //message=jsonResponse['details'];
      print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
    print("jsonResponse:  \n"+jsonResponse["details"].toString());
      print(jsonResponse["ااااااااااااااا"]);
      print(jsonResponse["details"]);
      return true;
    }
    else if(response.statusCode==301){
      var jsonResponse = jsonDecode(response.body);
      print("eeeeeeeeeeeeeeeeerr--------------roooooooooorrrrrrrrrr------" );
      if(jsonResponse['question_id'] !=null){
        message=jsonResponse['question_id'];
        // print(jsonResponse['question_id'] );
      }
      if(jsonResponse['provider_id'] !=null){
        message=jsonResponse['provider_id'];
        // print(jsonResponse['provider_id']);

      }
      if(jsonResponse['email'] !=null) {
        message=jsonResponse['email'];
        // print(jsonResponse['email']);
      }
      if(jsonResponse['reply'] !=null) {
        message=jsonResponse['reply'];
        // print(jsonResponse['reply']);
      }

      return false;
    }
    else{
      message='server error';
      return false;

}
  }
}
