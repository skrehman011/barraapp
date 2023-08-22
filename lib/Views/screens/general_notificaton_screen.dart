import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GeneralNotificationScreen extends StatefulWidget {
  @override
  _GeneralNotificationScreenState createState() => _GeneralNotificationScreenState();
}

class _GeneralNotificationScreenState extends State<GeneralNotificationScreen> {
  int selectedIndex = -1;

  void selectContainer(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1; // Deselect the container if it's already selected
      } else {
        selectedIndex = index; // Select the clicked container
      }
    });
  }

  Widget buildContainer(String text, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => selectContainer(index),
      child: Container(
        margin: EdgeInsets.only(top: 10, ),
        padding: EdgeInsets.all(10),
        height: 32.sp,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.blue : Colors.black,
              ),
            ),

            if (isSelected)
              Icon(
                Icons.check,
                color: Colors.blue,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        toolbarHeight: 40.sp,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('SELECT NOTIFICATION METHOD'),
            SizedBox(height: 15,),
            buildContainer('Push Notifications', 0),
            SizedBox(height: 10),
            buildContainer('Email Notifications', 1),
          ],
        ),
      ),
    );
  }
}
