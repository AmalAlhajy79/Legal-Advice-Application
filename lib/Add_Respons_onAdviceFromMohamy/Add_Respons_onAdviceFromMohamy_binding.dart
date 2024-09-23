import 'package:get/get.dart';
import 'package:lawer_project_lasttt/Add_Respons_onAdviceFromMohamy/Add_Response_onAdviceFromMohamy_Controller.dart';

class Add_Respons_onAdviceFromMohamyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<Add_Respons_onAdviceFromMohamyController>(Add_Respons_onAdviceFromMohamyController());
  }

}