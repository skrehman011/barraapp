// import 'package:barraappdesign/views/screens/barra_screen_page.dart';
// import 'package:barraappdesign/views/screens/forgets_layout.dart';
// import 'package:barraappdesign/views/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mybarraapp/Views/layouts/Sign_Up_layout.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:mybarraapp/Views/screens/Main_HomePage_Screen.dart';
import 'package:mybarraapp/Views/screens/forget_screen.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraScreenPage(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign In to Barra+',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTextField(hintText: 'Email Address/Phone Number',color: Colors.grey.withOpacity(.7),
                ),
                SizedBox(
                  height: 15,
                ),
                    CustomTextField(hintText: 'Password',color: Colors.grey.withOpacity(.7),
                    ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(
                          value: check,
                          onChanged: (bool? value) {
                            setState(() {
                              check = value!;
                            });
                          }),
                      Text(
                        "Stay Connected",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF5B606D),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                       Get.to(ForgetScreen());
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(onTap: (){
                  Get.to(MainHomePageScreen());
                }, text: 'Sign In'),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: 'Facebook',
                                content: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                    Text(
                                      "Chose an Account",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Continue to Barra+',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text('Johnson Smith', textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),),
                                              Text('johnson_smith@gmail.com', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                                            ],
                                          ),
                                          Icon(Icons.cancel_outlined),

                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                          ),
                                          Column(
                                            children: [
                                              Text('Shahrukh',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),),
                                              Text('sr_khan@gmail.com', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                                            ],
                                          ),
                                          Icon(Icons.cancel_outlined),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        children: [
                                          Icon(Icons.people_alt_outlined),
                                          SizedBox(width: 20,),
                                          Text("Use another account"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Facebook will share your name, email \naddress, and profile picture with Baara+.\nBefore using this app, you can review \nBaara+’s',
                                        style: TextStyle(
                                          color: Colors.grey.withOpacity(.7),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                        // DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(
                                            text: ' privacy policy',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          TextSpan(text: ' and '),
                                          TextSpan(
                                            text: 'terms of \nservices',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                          child: Image.asset('assets/images/facebook.png',
                              height: 40, width: 80),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.defaultDialog(
                                title: 'Google',
                                content: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/google.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                    ),
                                    Text(
                                      "Chose an Account",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Continue to Barra+',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text('Johnson Smith', textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),),
                                              Text('johnson_smith@gmail.com', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                                            ],
                                          ),
                                          Icon(Icons.cancel_outlined),

                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                          ),
                                          Column(
                                            children: [
                                              Text('Shahrukh',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),),
                                              Text('sr_khan@gmail.com', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),),
                                            ],
                                          ),
                                          Icon(Icons.cancel_outlined),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      child: Row(
                                        children: [
                                          Icon(Icons.people_alt_outlined),
                                          SizedBox(width: 20,),
                                          Text("Use another account"),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Facebook will share your name, email \naddress, and profile picture with Baara+.\nBefore using this app, you can review \nBaara+’s',
                                        style: TextStyle(
                                          color: Colors.grey.withOpacity(.7),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                        // DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(
                                            text: ' privacy policy',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          TextSpan(text: ' and '),
                                          TextSpan(
                                            text: 'terms of \nservices',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          },
                          child: Image.asset('assets/images/google.png',
                              height: 40, width: 80),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 50),

                  child: Row(
                    children: [
                      Text("Don't have an Account?"
                        , style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),
                      TextButton(onPressed: (){
                          Get.to(SignupLayout());
                      }, child: Text(
                        'Join Us', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      ))
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),),
    );
  }
}
