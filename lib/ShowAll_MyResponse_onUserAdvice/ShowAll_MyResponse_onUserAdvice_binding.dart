import 'package:get/get.dart';

import 'ShowAll_MyResponse_onUserAdvice_controller.dart';

class ShowAll_MyResponse_onUserAdviceBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ShowAll_MyResponse_onUserAdviceController>(ShowAll_MyResponse_onUserAdviceController());
  }

}