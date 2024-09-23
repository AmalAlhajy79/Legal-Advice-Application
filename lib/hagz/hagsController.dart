import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lawer_project_lasttt/hagz/hagzModel.dart';

import 'hagzServece.dart';

class HagzController extends GetxController {
  var question_id= 0;
  var provider_id= 0;
  // PickedFile? _imageFile=PickedFile("");
  // dynamic _pickImageError;
  List<Detaillll> details=[];
//  String reply= '';
  var ShowAllProviderAdvi_Status = false;
  HagzService service= new HagzService();
  var isLoding=true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    details  = await service.showAllProvider_Advic();
    isLoding(false);
    super.onReady();
  }
// var message;
//
//   ShowAll_MyResponse_onUserAdviceService service = ShowAll_MyResponse_onUserAdviceService();
//
//   Future<void> showAll_MyResponse_onUserAdviceOnClicked() async {
//     showAll_ResponseOn_onAdv_Status = await service.ShowAll_MyResponse_onUserAdv();
//     // message = service.message;
//     //  if (message is List) {
//     //    String temp = '';
//     //    for (String s in message) {
//     //      temp += s + '\n';
//     //    }
//     //    message = temp;
//     //  }
//   }
}
