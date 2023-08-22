import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextField extends StatelessWidget {

  String? hintText;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 1,
              color: Colors.black.withOpacity(.2),
              style: BorderStyle.solid)),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 1, color: Color(0xFF3368FF).withOpacity(0.7))),
            contentPadding:
            EdgeInsets.symmetric(horizontal: 10, vertical: 17),
            border: InputBorder.none,
            hintText: hintText?? 'John Smi',
            hintStyle: TextStyle (color: color?? Color(0xFF41485B))),
      ),
    );
  }

  CustomTextField({
    required this.hintText,
    this.color,
  });
}
