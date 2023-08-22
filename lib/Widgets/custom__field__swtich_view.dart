import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFieldSwitchView extends StatefulWidget {
  final Color? color;
  final String? labelText;
  final TextStyle? textStyle;

  const CustomFieldSwitchView({
    this.color,
    this.labelText,
    this.textStyle});

  @override
  _CustomFieldSwitchViewState createState() => _CustomFieldSwitchViewState();
}

class _CustomFieldSwitchViewState extends State<CustomFieldSwitchView> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            widget.labelText ?? 'Online Seller',
            style: widget.textStyle ?? TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          Switch(
            value: switchValue,
            onChanged: (newValue) {
              setState(() {
                switchValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
