import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFieldIconView extends StatelessWidget {
  final Color? color;
  final Text? text;
  final TextStyle? textStyle;
  final Widget? lastChild;


  const CustomFieldIconView({
    this.color,
    this.text,
    this.textStyle,
    this.lastChild,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.sp,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(.2),
          style: BorderStyle.solid,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text?.data ?? 'Online Seller',
            style: textStyle ??
                TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
          ),
          lastChild ?? Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
