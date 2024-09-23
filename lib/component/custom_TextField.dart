
import 'package:flutter/material.dart';
import 'package:lawer_project_lasttt/component/constant.dart';

class CustomTextField extends StatelessWidget {
  final double whidth,height;
  final String hintText;
  final TextInputType ? Keyboard;
  final Function(String) onChange;


  CustomTextField({
    required this.height,
    required this.whidth,
    required this.hintText,
    this.Keyboard,
    required this.onChange

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: whidth,
      // height: MediaQuery.of(context).size.height * 0.90,
      height: height,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20),
        border: Border(
          top: BorderSide(color: Colors.black,width: 1),
          left: BorderSide(color: Colors.black,width: 1),
          right: BorderSide(color: Colors.black,width: 1),
          bottom: BorderSide(color: Colors.black,width: 1),
        ),
        //color: Colors.black54,
      ),
      child: Center(
        child: TextField(
          onChanged: onChange,
          cursorColor: white,

          keyboardType:Keyboard ?? TextInputType.text ,// if it was null put type ->TextInputType.text
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            //  fontFamily: '',
          ),
          decoration: InputDecoration(
           border: InputBorder.none,
            hintText: hintText,
            hintStyle:TextStyle(
                fontSize: 20,
                color:  Colors.black,
              //  fontFamily: '',
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
          ),
        ),
      ),
    );
  }
}
