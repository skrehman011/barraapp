import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/screens/post_request_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ManageRequest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40.sp,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_outlined, color: Colors.black,)),
        title: Text('Manage Requests', style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image(image: AssetImage('assets/images/document.png')),
            SizedBox(height: 10,),
            Text('No request found', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.black
            ),),
            TextButton(
              onPressed: () {
                Get.to(PostRequestScreen());
              },
              child: Text('Post a request', style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.blue
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
