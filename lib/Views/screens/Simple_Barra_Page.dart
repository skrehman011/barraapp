import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mybarraapp/Views/screens/notification_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SimpleBarraPage extends StatefulWidget {
  @override
  _SimpleBarraPageState createState() => _SimpleBarraPageState();

  Widget child;

  SimpleBarraPage({
    required this.child,
  });

}

class _SimpleBarraPageState extends State<SimpleBarraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF3368FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 70,
                    width: 30.w,
                    image: AssetImage('assets/images/logo 1.png'),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(NotificationScreen());
                        },
                        child: Icon(
                          Icons.notifications_none_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Image(
                        width: 30,
                        height: 30,
                        image: Svg('assets/images/group.svg'),
                      ),
                    ],
                  )

                ],
              ),
            ),
            Positioned(
              top: 80,
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
              left: 0,
              right: 0,
              bottom: 0,
              top: 90,
              child: Container(
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
