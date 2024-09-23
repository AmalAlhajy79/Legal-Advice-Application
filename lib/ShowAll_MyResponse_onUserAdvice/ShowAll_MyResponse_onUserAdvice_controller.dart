import 'package:get/get.dart';
import 'ShowAll_MyResponse_onUsAdv_Model.dart';
import 'ShowAll_MyResponse_onUserAdvice_service.dart';

class ShowAll_MyResponse_onUserAdviceController extends GetxController {
  var question_id= 0;
  var provider_id= 0;
  List<Detail> details=[];
//  String reply= '';
  var showAll_ResponseOn_onAdv_Status = false;
  ShowAll_MyResponse_onUserAdviceService service=new ShowAll_MyResponse_onUserAdviceService();
  var isLoding=true.obs;
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async{
    details  = await service.ShowAll_MyResponse_onUserAdv();
    isLoding(false);
    super.onReady();
  }
  // var message;

 }
