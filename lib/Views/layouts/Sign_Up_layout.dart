import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Sign_In_Layout.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignupLayout extends StatefulWidget {
  @override
  State<SignupLayout> createState() => _SignupLayoutState();
}

class _SignupLayoutState extends State<SignupLayout> {
  bool check = false;
  String? groupValue = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraScreenPage(
          child: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Join Barra+',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                hintText: "John Smi",
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Email Address',
                color: Colors.grey.withOpacity(.7),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Phone Number',
                color: Colors.grey.withOpacity(.7),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Address',
                color: Colors.grey.withOpacity(.7),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hintText: 'Password',
                color: Colors.grey.withOpacity(.7),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Select Gender',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Container(
                child: Row(
                  children: [
                    MyRadio(
                      value: "male",
                      groupValue: groupValue,
                      onChange: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      title: 'Male',
                    ),
                    MyRadio(
                      value: 'female',
                      groupValue: groupValue,
                      onChange: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                      title: "Female",
                    ),
                  ],
                ),
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
                    RichText(
                      text: TextSpan(
                        text: 'By joining',
                        style: TextStyle(
                          color: Colors.grey.withOpacity(.7),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                        // DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' I agree',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          TextSpan(text: ' for receive emails from Barra+'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              CustomButton(
                onTap: () {},
                text: "Sing Up",
              ),
              SizedBox(
                height: 20,
              ),
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
                            title: "",
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
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    Text(
                      "Already a member?",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(LoginPage());
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
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
      )),
    );
  }
}

class MyRadio extends StatelessWidget {
  String? value;
  String? groupValue;
  Function(String? value) onChange;
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String?>(
            value: value, groupValue: groupValue, onChanged: onChange),
        SizedBox(
          width: 5.sp,
        ),
        Text(title)
      ],
    );
  }

  MyRadio({
    this.value,
    this.groupValue,
    required this.onChange,
    required this.title,
  });
}
