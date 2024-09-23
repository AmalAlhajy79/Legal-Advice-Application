// import 'dart:async';
// import 'dart:io';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter/src/widgets/basic.dart';
// import 'package:image_picker/image_picker.dart';
//
//
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Picker Demo',
//       home: MyHomePageImagePacker(),
//     );
//   }
// }
//
// class MyHomePageImagePacker extends StatefulWidget {
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePageImagePacker> {
//   PickedFile? _imageFile;
//   dynamic _pickImageError;
//   bool isVideo = false;
//   final ImagePicker _picker = ImagePicker();
//
//   void _onImageButtonPressed(ImageSource source,{BuildContext? context}) async {
//       await _displayPickImageDialog(context!,() async {
//             try {
//               final pickedFile = await _picker.getImage(source: source,);
//               setState(() {
//                 _imageFile = pickedFile;
//               });
//             } catch (e) {
//               setState(() {
//                 _pickImageError = e;
//               });
//             }
//           });
//   }
//
//
//
//   Widget _previewImage() {
//     if (_imageFile != null) {
//       if (kIsWeb) {
//         return Container(
//           height: 200,
//           width: 200,
//           decoration: BoxDecoration(
//             border: Border.all(width: 6,color: Colors.red)
//           ),
//             child: Image.network(_imageFile!.path)
//         );
//       } else {
//         return Semantics(
//             child: Image.file(File(_imageFile!.path)),
//             label: 'image_picker_example_picked_image');
//       }
//     } else if (_pickImageError != null) {
//       return Text(
//         'Pick image error: $_pickImageError',
//         textAlign: TextAlign.center,
//       );
//     } else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
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
//         isVideo = false;
//         setState(() {
//           _imageFile = response.file;
//         });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:
//       Center(
//         child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
//             ? FutureBuilder<void>(
//           future: retrieveLostData(),
//           builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
//             switch (snapshot.connectionState) {
//               case ConnectionState.none:
//               case ConnectionState.waiting:
//                 return const Text(
//                   'You have not yet picked an image.',
//                   textAlign: TextAlign.center,
//                 );
//               case ConnectionState.done:
//                 return  _previewImage();
//               default:
//                 if (snapshot.hasError) {
//                   return Text(
//                     'Pick image/video error: ${snapshot.error}}',
//                     textAlign: TextAlign.center,
//                   );
//                 } else {
//                   return const Text(
//                     'You have not yet picked an image.',
//                     textAlign: TextAlign.center,
//                   );
//                 }
//             }
//           },
//         )
//             : (_previewImage()),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           Semantics(
//             label: 'image_picker_example_from_gallery',
//             child:
//             FloatingActionButton(
//               onPressed: () {
//                 isVideo = false;
//                 _onImageButtonPressed(ImageSource.gallery, context: context);
//               },
//               heroTag: 'image0',
//               tooltip: 'Pick Image from gallery',
//               child: const Icon(Icons.photo_library),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//
//   Future<void> _displayPickImageDialog(BuildContext context, OnPickImageCallback onPick) async {
//     return
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Add optional parameters'),
//             content: Column(
//               children: <Widget>[
// Container(
//   color: Colors.blue,
//   height: 300,
//   width: 400,
// )
//               ],
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text('CANCEL'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                   child: const Text('PICK'),
//                   onPressed: () {
//                     onPick();
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }
// }
//
// typedef void OnPickImageCallback( );
