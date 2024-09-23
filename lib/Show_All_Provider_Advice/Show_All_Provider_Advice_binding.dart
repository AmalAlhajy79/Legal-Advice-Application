import 'package:get/get.dart';
import 'Show_All_Provider_Advice_controller.dart';

class ShowAllProviderAdviceBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<ShowAllProviderAdviceController>(ShowAllProviderAdviceController());
  }

}