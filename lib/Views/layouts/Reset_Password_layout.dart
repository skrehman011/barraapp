import 'package:flutter/material.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ResetPassword extends StatefulWidget {

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraScreenPage(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 60,),
                    Text('Reset Password', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 10.sp,),
                Text('Create a new password', style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),),
                SizedBox(height: 120,),
                CustomTextField(hintText: "New Password", color: Colors.grey.withOpacity(.7),),
                SizedBox(height: 20.sp,),
                CustomTextField(hintText: "Confirm Password", color: Colors.grey.withOpacity(.7),),
                SizedBox(height: 50.sp,),
                CustomButton(onTap:(){}, text: 'Update Password'),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
