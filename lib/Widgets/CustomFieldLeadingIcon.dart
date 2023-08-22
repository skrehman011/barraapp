import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFieldLeadingIcon extends StatefulWidget {
  final Color? color;
  final Text? text;
  final TextStyle? textStyle;
  final Widget firstChild;

  const CustomFieldLeadingIcon({
    this.color,
    this.text,
    this.textStyle,
    required this.firstChild,
  });

  @override
  _CustomFieldLeadingIconState createState() => _CustomFieldLeadingIconState();
}

class _CustomFieldLeadingIconState extends State<CustomFieldLeadingIcon> {
  int selectedIndex = -1;

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1; // Deselect the option if it's already selected
      } else {
        selectedIndex = index; // Select the clicked option
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleSelection(0), // Specify the index of the option here
      child: Container(
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
        child: ListTile(
          leading: Container(
            width: 20.sp,
            height: 20.sp,
            child: widget.firstChild,
          ),
          title: Text(
            widget.text?.data ?? 'Online Seller',
            style: widget.textStyle ??
                TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
          ),
          trailing: selectedIndex == 0 ? Icon(Icons.check, color: Colors.blue) : null,
        ),
      ),
    );
  }
}
