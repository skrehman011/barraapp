// import 'package:barraappdesign/views/screens/barra_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mybarraapp/Views/layouts/Code_Sent_Layout.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// import 'code_sent_page.dart';

class ForgetScreen extends StatefulWidget {

  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraScreenPage(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Icon(Icons.arrow_back),
                    SizedBox(width: 60,),
                    Text('Forget Password', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                Text('Enter your Email or Number to \n '
                    '        reset your password', style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),),
                SizedBox(height: 120,),
                CustomTextField(hintText: "Email/Number", color: Colors.grey.withOpacity(.7),),
                SizedBox(height: 120,),
                CustomButton(onTap: (){
                  Get.to(CodeSentPage());
                }, text: "Submit"),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
