import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Reset_Password_layout.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BarraScreenPage(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 40.sp,
                  ),
                  Text(
                    'OTP Verification',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 20.sp,),
              Text(
                'We’ve sent an OTP code to your email/mobile,\n       '
                'please enter that code below to verify.',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 30.sp,),
              Pinput(
                length: 4,
              ),
              SizedBox(height: 20.sp,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Haven’t received code yet?',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),Text(
                    ' Send again',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.blue),
                  ),

                ],
              ),
              SizedBox(height: 30.sp,),
              CustomButton(onTap: (){
                Get.to(ResetPassword());
              }, text: 'Verify')
            ],
          ),
        ),
      ),
    ));
  }
}

class EditableBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: Color(0xFF9FB8FF),
      child: TextField(
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
