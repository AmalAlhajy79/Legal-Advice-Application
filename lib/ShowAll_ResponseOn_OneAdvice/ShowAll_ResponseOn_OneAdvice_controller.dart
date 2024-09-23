import 'package:get/get.dart';
import 'ShowAll_ResponseOn_OneAdvice_Model.dart';
import 'ShowAll_ResponseOn_OneAdvice_service.dart';

class ShowAll_ResponseOn_OneAdviceController extends GetxController {
  var question_id= 0;
  var provider_id= 0;
    Detailss details=Detailss();
//  String reply= '';
  var ShowAll_ResponseOn_OneAdv_Status = false;
  ShowAll_ResponseOn_OneAdviceService service=new ShowAll_ResponseOn_OneAdviceService();
  var isLoding=true.obs;
  @override
  void onInit() {

    super.onInit();
  }

  @override
  void onReady() async{
    details  =  await service.showAll_ResponseOn_OneAdvi() ;
    print('{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{');
    isLoding(false);
    super.onReady();
  }
// var message;
}
