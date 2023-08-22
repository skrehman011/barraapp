import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SupportBarraScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.sp,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_outlined, color: Colors.black,)),
        backgroundColor: Colors.white,
        title: Text(
          'Support',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          children: [
            CustomFieldIconView(
              text: Text(
                'Help & Education'
              ),
            ),
            SizedBox(height: 10,),
            CustomFieldIconView(
              text: Text(
                'Leave feedback'
              ),
            ),
            SizedBox(height: 10,),
            CustomFieldIconView(
              text: Text(
                'Forum'
              ),
            ),
            SizedBox(height: 10,),
            CustomFieldIconView(
              text: Text(
                'Blog'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
