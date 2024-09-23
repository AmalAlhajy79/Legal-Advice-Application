import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lawer_project_lasttt/Add_User_Advice/Add_User_Advice_controller.dart';

import '../component/TextUtils.dart';
import '../component/custom_TextField.dart';

 class AddUserAdvice extends StatefulWidget {
  // ShowAllUserAdvice({Key? key}) : super(key: key);

  @override
  State<AddUserAdvice> createState() => _AddUserAdviceState();
}

class _AddUserAdviceState extends State<AddUserAdvice> {
  AddUserAdviceController controller=Get.find();

  // Initial Selected Value
  String dropdownvalue = 'القانون الاداري';

  // List of items in our dropdown menu
  var items = [
    'القانون الاداري',
    'القانون الدستوري',
    'القانون المالي',
    'القانون المدني',
    'القانون الجنائي',
  ];

//////////
//   PickedFile? _imageFile;  // for path of image picker
//   dynamic _pickImageError;
 bool isVideo = false;
//
//   final ImagePicker _picker = ImagePicker();
//   var Base64Encode;  //  for path of image picker after Base64Encode
//   void _onImageButtonPressed(ImageSource source,{BuildContext? context}) async {
//     await _displayPickImageDialog(context!, () async {
//       try {
//         final pickedFile = await _picker.getImage(source: source,);
//
//            setState(() async {
//              _imageFile = pickedFile;
//            //  File img = File(_imageFile!.path);
//            //  print("---------_imageFile!.path--------");
//              // print(img);
//              ////////////////////////
//            });
//          } catch (e) {
//           setState(() {
//           _pickImageError = e;
//         });
//       }
//     });
//   }
//
//   // Future<String?> convertImgToBase64() async {
//   //   try {
//   //     Future<Uint8List>? imageBytes = _imageFile?.readAsBytes();
//   //     print("---------imageBytes--------");
//   //     print(imageBytes);
//   //     String baseimage = base64Encode(imageBytes as List<int>);
//   //   //  File img = File(_imageFile!.path);
//   //     // print("---------_imageFile!.path--------");
//   //     // print(img);
//   //     // final splitted = _imageFile!.path.split('.');
//   //     // final ext = splitted.last;
//   //   //  final response = await img.readAsBytes();
//   //     print("response");
//   //     print(baseimage);
//   //   //   Base64Encode = base64Encode(response);
//   //
//   //     print("---------Base64Encode : --------");
//   //    // print(Base64Encode);
//   //     controller.image=baseimage;
//   //     return "${baseimage}"; //"data:image/$ext;base64,${base64Encode(response)}";
//   //   } catch (e) {
//   //     //print(e.toString());
//   //     return null;
//   //   }
//   // }
//   Widget _previewImage() {
//
//     if (_imageFile != null) {           // if (_imageFile != null) {
//       controller.image="${_imageFile?.path}";
//       print("controller.image    :  " + "${controller.image}");
//       if (kIsWeb) {
//         return
//           Container(height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//                 //  border: Border.all(width: 6,color: Colors.red)
//                 ),
//             child: Image.network(  //  here receve picture
//               _imageFile!.path,
//               fit: BoxFit.fill,
//             )
//           );
//       } else {
//         return Semantics(
//             child: Image.file(File(_imageFile!.path)),
//             label: 'image_picker_example_picked_image');}
//     } else if (_pickImageError != null) {
//       return Text(
//         'Pick image error: $_pickImageError',
//         textAlign: TextAlign.center,
//       );
//     } else {
//       return Center(
//         child: TextUtils(
//             text:
//             'أنت لم تختر صورة ',
//             fontSize:20,
//             fontWeight:FontWeight.normal,
//             colorText:Colors.black
//         ),
//       );
//     }
//   }
//
//   Future<void> retrieveLostData() async {
//     final LostData response = await _picker.getLostData();
//     if (response.isEmpty) {
//       return;
//     }
//     if (response.file != null) {
//       isVideo = false;
//       setState(() {
//         _imageFile = response.file;
//
//       });
//     }
//   }

  ////////////////////////////////////////////////////////////////////
//   PickedFile? _imageFile;
//   dynamic _pickImageError;
//   bool isVideo = false;
//   final ImagePicker _picker = ImagePicker();
// var base64img;
//   void _onImageButtonPressed(ImageSource source,
//       {BuildContext? context}) async {
//     await _displayPickImageDialog(context!, () async {
//       try {
//         final pickedFile = await _picker.getImage(
//           source: source,
//         );
//
//         setState(() {
//           _imageFile = pickedFile;
//           print("................_imageFile.............");
//           print("$_imageFile");
//           File img = File(_imageFile!.path);
//           var response = img.readAsBytesSync();
//           print("................ befor base64img.............");
//           List<int> imageBase64=base64Decode(response as String);
//           print("................ after base64img.............");
//            base64img =imageBase64;
//           print("................base64img.............");
//            print(base64img);
//           controller.image='$base64img';
//         });
//       } catch (e) {
//         setState(() {
//           _pickImageError = e;
//         });
//       }
//     });
//   }
////////////////////////////////////////////

 File? _image;
  PickedFile? _pickedFilee;
  final _picker = ImagePicker();
  // Implementing the image picker

  Future<void> _pickImage() async {
    _pickedFilee= await _picker.getImage(source: ImageSource.gallery);
    if (_pickedFilee != null) {
      setState(() {
        _image = File(_pickedFilee!.path);

      });
    }
  }


 Widget _previewImage() {
    if (_pickedFilee != null) {
    //  File img = File(_pickedFilee!.path);
      // var response = await img.readAsBytes().asStream();
      controller.pickFile=_pickedFilee;

      // controller.image='$base64img';                               //'${_imageFile?.path}';
      print("controller.image    :  " + '${controller.pickFile}');
      if (kIsWeb) {
        return
          Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                //  border: Border.all(width: 6,color: Colors.red)
              ),
              child://Image.memory(base64img,fit: BoxFit.cover,)
              Image.network(  //  here receve picture
                _pickedFilee!.path,
                fit: BoxFit.fill,
              )
          );

      } else {
        return Semantics(
            child: Image.file(File(_pickedFilee!.path)),
            label: 'image_picker_example_picked_image');
      }
    }
    // else if (_pickImageError != null) {
    //   return Text(
    //     'Pick image error: $_pickImageError',
    //     textAlign: TextAlign.center,
    //   );
    // }
    else {
      return Center(
        child: TextUtils(
            text:
            'أنت لم تختر صورة ',
            fontSize:20,
            fontWeight:FontWeight.normal,
            colorText:Colors.black
        ),
      );
    }
  }

  Future<void> retrieveLostData() async {
    final LostData response = await _picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      isVideo = false;
      setState(() {
        _pickedFilee = response.file;

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  drawerScrimColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.amberAccent,
                size: 40,
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.topRight,
        // color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16,
              ),
              child: TextUtils(
                text: 'Add your Advice',
                fontSize: 23,
                fontWeight: FontWeight.w900,
                colorText: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 5,left: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Colors.white70,
                   border: Border.all(color: Colors.black87, width: 1)
                ),
                child: ListView(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          //grey.shade100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50)),
                            // color: Colors.green.shade100,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  //  color: Colors.red,
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      //  DropdownButton
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 100,

                                        decoration: BoxDecoration(
                                            //   color: Colors.black54,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [

                                            TextUtils(
                                              text: " Advice :",
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              colorText: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Expanded(
                                              child: CustomTextField(
                                                height: 300,
                                                whidth: MediaQuery.of(context).size.width * 0.40,
                                                hintText:'  Write An Advice ',
                                                Keyboard: TextInputType.text,
                                                onChange: (value) {
                                                  controller.question=value;
                                                  print("question value is "+value);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),

                                      Container(
                                        height: 150,
                                       // alignment: Alignment.,
                                        padding:  EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                             // color: Colors.black54,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Row(
                                          mainAxisAlignment:MainAxisAlignment.end,
                                          children: [

                                            TextUtils(
                                              text: " Picture : ",
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              colorText: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 38,
                                                width: 30,
                                                child: FloatingActionButton(
                                                  backgroundColor: Colors.black54,
                                                  //  shape:Border.all(color: Colors.black,),
                                                  onPressed: () {
                                                    isVideo = false;
                                                    _pickImage();
                                                  //   _onImageButtonPressed(
                                                  //       ImageSource.gallery,
                                                  //       context: context);
                                                  },
                                                  heroTag: 'image0',
                                                  tooltip:
                                                  'Pick Image from gallery',
                                                  child: const Icon(
                                                      Icons.photo_library),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context).size.width *0.50,
                                                // height: MediaQuery.of(context).size.height * 0.90,
                                                height: 120,
                                                //  padding:  EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                  border: Border(
                                                    top: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    left: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    right: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                    bottom: BorderSide(
                                                        color: Colors.black,
                                                        width: 1),
                                                  ),
                                                  //    color: Colors.black54,
                                                ),
                                                child:
    // Center(
    //                                                 child:
    //                                                 // FutureBuilder(
    //                                                 //     future: _previewImage(),
    //                                                 //     builder: (BuildContext context,text){
    //                                                 //       return Text("not select image",style: TextStyle(fontSize:18,),);
    //                                                 //     }
    //                                                 // )
    //                                                       FutureBuilder(
    //
    //                                               builder: (BuildContext context, AsyncSnapshot<String> text) {
    //                                                 return new Text("text.data");
    //                                             )


                           //////////////////
                                              !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                                                  ?
                                              FutureBuilder<void>(
                                                      future:
                                                          retrieveLostData(),
                                                      builder: (BuildContext
                                                              context,
                                                          AsyncSnapshot<void>
                                                              snapshot) {
                                                        switch (snapshot
                                                            .connectionState) {
                                                          case ConnectionState
                                                              .none:
                                                          case ConnectionState
                                                              .waiting:
                                                            return  TextUtils(
                                                                text:
                                                                    'أنت لم تختر صورة حتى الآن .',
                                                                fontSize:27,
                                                                fontWeight:FontWeight.w900,
                                                                colorText:Colors.black
                                                            );
                                                          case ConnectionState
                                                              .done:
                                                            return _previewImage();
                                                          default:
                                                            if (snapshot
                                                                .hasError) {
                                                              return Text(
                                                                'Pick image/video error: ${snapshot.error}}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              );
                                                            } else {
                                                              return const Text(
                                                                'أنت لم تختر صورة حتى الآن .',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              );
                                                            }
                                                        }
                                                      },
                                                    )
                                              : (_previewImage()),
                                                ),
                                         //   ),

                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 160),
                                    ],
                                  ),
                                ),

                                //   SizedBox(height: 150,),
                              ]),
                        ),
                        //   SizedBox(height: 50,),
                        Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: InkWell(
                              onTap: () {
                                onClicked_AddUserAdvice();
                                print("You Tap in button");
                                Get.toNamed('/showAllUserAdvice');
                              },
                              child: Container(
                                height: 60,
                                width: 140,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(20),

                                    //  shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black54, blurRadius: 6),
                                    ]),
                                child: TextUtils(
                                    colorText: Colors.amberAccent,
                                    fontSize: 21,
                                    fontWeight: FontWeight.normal,
                                    text: "Send Advice",
                                    underLine: TextDecoration.none),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(height: 4,)
          ],
        ),
      ),
    );
  }
  void onClicked_AddUserAdvice() async{
    EasyLoading.show(status: 'Loading...');
    await controller.addUserAdviceOnClicked();
    if(controller.addUserAdvice_Status){
      EasyLoading.showSuccess("success.."); //EasyLoading.showSuccess(controller.message);
      Get.toNamed('/showAllUserAdvice');
    }
    else{
      EasyLoading.showError(controller.message,duration: Duration(seconds: 5),dismissOnTap: true);
      print('erroooooooooooor here');
    }
  }
}

Future<void> _displayPickImageDialog(
    BuildContext context, OnPickImageCallback onPick) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
         // title: Text('Add optional parameters'),
          backgroundColor: Colors.white,
          content: Column(
            children: <Widget>[
              SizedBox(height: 200,),
             TextUtils(
             text: "هل أنت متأكد أنك تريد إضافة صورة ؟",
             fontSize: 25,
             fontWeight:FontWeight.normal,
             colorText: Colors.black,
             underLine: TextDecoration.none,
             ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child:  TextUtils(
                text: 'تجاهل',
                fontSize: 23,
                fontWeight:FontWeight.normal,
                colorText: Colors.black,
                underLine: TextDecoration.none,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 20,),
            TextButton(
                child:  TextUtils(
                  text: 'نعم',
                  fontSize: 23,
                  fontWeight:FontWeight.normal,
                  colorText: Colors.black,
                  underLine: TextDecoration.none,
                ),
                onPressed: () {
                  onPick();
                  Navigator.of(context).pop();
                }),
          ],
        );
      });
}

typedef void OnPickImageCallback();
