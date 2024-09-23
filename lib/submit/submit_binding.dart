import 'package:get/get.dart';
import 'package:lawer_project_lasttt/submit/submit_controller.dart';

class SubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SubmitController());

  }
}