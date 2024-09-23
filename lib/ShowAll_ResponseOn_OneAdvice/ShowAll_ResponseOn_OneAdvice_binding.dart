import 'package:get/get.dart';
import 'ShowAll_ResponseOn_OneAdvice_controller.dart';

class ShowAll_ResponseOn_OneAdviceBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ShowAll_ResponseOn_OneAdviceController>(ShowAll_ResponseOn_OneAdviceController());
  }

}