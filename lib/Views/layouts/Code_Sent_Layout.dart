import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mybarraapp/Views/layouts/PinPut_layout.dart';
import 'package:mybarraapp/Views/screens/Barra_Screen_Page.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CodeSentPage extends StatefulWidget {
  const CodeSentPage({Key? key}) : super(key: key);

  @override
  State<CodeSentPage> createState() => _CodeSentPageState();
}

class _CodeSentPageState extends State<CodeSentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BarraScreenPage(
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Icon(Icons.arrow_back)
              ],
            ),
            SizedBox(
              height: 45.sp,
            ),
            Image(
              width: 50,
              height: 50,
              image: Svg('assets/images/sms-tracking.svg'),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              "Email/Number Verification Required",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Text('We have sent you a verification link to your \n '
                ' email/mobile. please click on the URL to \n '
                '                        verify your email'),

            SizedBox(height: 50.sp),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 17),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                     Get.to(OTPVerify());
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
