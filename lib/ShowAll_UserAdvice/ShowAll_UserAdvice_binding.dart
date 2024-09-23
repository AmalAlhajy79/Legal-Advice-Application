import 'package:get/get.dart';

import 'ShowAll_UserAdvice_controller.dart';
class ShowAllUserAdviceBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ShowAllUserAdviceController>(ShowAllUserAdviceController());
  }

}