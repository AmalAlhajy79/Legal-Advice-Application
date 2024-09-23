import 'dart:convert';
import 'package:http/http.dart' as http;
import '../config/server_config.dart';
import 'ShowAll_MyResponse_onUsAdv_Model.dart';

class ShowAll_MyResponse_onUserAdviceService{

  // var message;
  var url=Uri.parse(ServerConfig.domainNameServer + ServerConfig.showAll_MyResponse_onUserAdv);

  Future<List<Detail>> ShowAll_MyResponse_onUserAdv()async{
    print("eeeeeeeeeeeeeeeeeeeeee");
    var response=await http.post(
      url,
      // headers: {
      //   'Accept':'application/json',
      // },
      body: {
        'question_id':'34',
        'provider_id':'1',
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
      print("-------------Replay-----------");
  print(jsonResponse["details"][0]["reply"]);
      print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww \n"+
          "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
      var detals=showAllMyResponseOnUserAdviceModelFromJson(response.body);
      return detals.details;
    }
    else{
      print("** error in server or field **");
      //message='server error';
      return [];

    }
  }
}
