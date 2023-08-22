import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BarraScreenPage extends StatefulWidget {

  @override
  _BarraScreenPageState createState() => _BarraScreenPageState();
  Widget child;

  BarraScreenPage({
    required this.child,
  });
}

class _BarraScreenPageState extends State<BarraScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF3368FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                height: 52.sp,
                width: Get.width * 1,
                child: Image(
                  image: AssetImage('assets/images/logo 1.png'),
                )),
            Positioned(
              top: 110,
              left: 14,
              right: 14,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.4),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24)),
                ),
              ),
            ),
            Positioned(
              top: 120,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24)),
                  ),
                  child: widget.child),
            ),
          ],
        ),
      ),
    );
  }
}
