import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  String text;
  Color? buttonColor;
  TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        width: Get.width,
        height: 50,
        child:  Text(
          text??
        'Sign Up',
        style: textStyle?? TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: buttonColor?? Colors.white,
        ),
      ),
      ),
    );
  }

  CustomButton({
    required this.onTap,
    required this.text,
    this.buttonColor,
    this.textStyle,
  });
}
