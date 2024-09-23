import 'package:get/get.dart';

import 'Add_User_Advice_controller.dart';

class AddUserAdviceBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<AddUserAdviceController>(AddUserAdviceController());
  }

}