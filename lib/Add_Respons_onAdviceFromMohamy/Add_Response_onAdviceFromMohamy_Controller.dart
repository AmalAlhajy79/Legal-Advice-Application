import 'package:get/get.dart';
import 'package:lawer_project_lasttt/Add_Respons_onAdviceFromMohamy/Add_Response_onAdviceFromMohamy_service.dart';

class Add_Respons_onAdviceFromMohamyController extends GetxController {
  int question_id= 0;
  int provider_id= 0;
  String reply= '';
  var Add_ResponseStatus = false;
 var message;

  Add_Respons_onAdviceFromMohamyService service = Add_Respons_onAdviceFromMohamyService();

  Future<void> add_Respons_onAdviceFromMohamyOnClicked() async {
  //  if(question_id!=null && provider_id!=null && reply!=null) {
      Add_ResponseStatus = await service.add_Respons_onAdviceFromMo(reply);
  //  }
  //  else {
      message = service.message;
      if (message is List) {
        String temp = '';
        for (String s in message) {
          temp += s + '\n';
        }
        message = temp;
      }
  //  }
  }
}
