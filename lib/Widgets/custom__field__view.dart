import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFieldView extends StatefulWidget {
  final Color? color;
  final Text? text;
  final TextStyle? textStyle;

  const CustomFieldView({
    this.color,
    this.text,
    this.textStyle,
  });

  @override
  _CustomFieldViewState createState() => _CustomFieldViewState();
}

class _CustomFieldViewState extends State<CustomFieldView> {
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
        width: 90.w,
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
              widget.text?.data ?? 'Online Seller',
              style: widget.textStyle ??
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            if (selectedIndex == 0) // Check if the option is selected
              Icon(
                Icons.check,
                color: Colors.green,
              ),
          ],
        ),
      ),
    );
  }
}

