
import 'package:flutter/material.dart';
import 'package:lawer_project_lasttt/component/constant.dart';

class CustomButton extends StatelessWidget {
  final Function()  onTap;
  final double  height,width;
  final double ? fontSize;
  final String buttonName;
  final Color ? buttonColor,fontColor;

  CustomButton({
    required this.height,
    required this.width,
    required this.buttonName,
    this.buttonColor,
    this.fontColor,
    this.fontSize,
    required this.onTap
});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
        //  color: buttonColor ?? white,
          color: buttonColor != null? buttonColor : white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              color:fontColor ?? black, //if button was null put black
              fontSize:fontSize ?? 20,
             // fontFamily: 'QwitcherGrypen Bold',
            ),
          ),
        ),
      ),
    );
  }
}
