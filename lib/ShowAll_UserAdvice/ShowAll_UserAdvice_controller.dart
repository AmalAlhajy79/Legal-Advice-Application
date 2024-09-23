import 'package:get/get.dart';
import 'ShowAllUserAdvice_model.dart';
import 'ShowAll_UserAdvice_service.dart';

class ShowAllUserAdviceController extends GetxController {
  var question_id= 0;
  List<Detailll> details=[];
  var ShowAllUserAdvi_Status = false;
  ShowAllUserAdviceService service= new ShowAllUserAdviceService();
  var isLoding=true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    details  = await service.showAllUser_Advice();
    isLoding(false);
    super.onReady();
  }

}
