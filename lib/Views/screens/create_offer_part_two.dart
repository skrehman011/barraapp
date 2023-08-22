import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateOfferPartTwo extends StatefulWidget {
  @override
  _CreateOfferPartTwoState createState() => _CreateOfferPartTwoState();
}

class _CreateOfferPartTwoState extends State<CreateOfferPartTwo> {
  int selectedIndex = -1;

  void selectContainer(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildContainer(String text, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => selectContainer(index),
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.all(10),
        height: 33.sp,
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.grey.withOpacity(.7) : Colors.grey.withOpacity(.7),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.grey : Colors.grey,
              ),
            ),
            Container(
              width: 20.sp,
              height: 20.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? Colors.blue : Colors.transparent,
                border: Border.all(
                  width: 1,
                  color: isSelected ? Colors.blue : Colors.grey,
                ),
              ),
              child: isSelected
                  ? Icon(
                Icons.check,
                size: 16.sp,
                color: Colors.white,
              )
                  : null,
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
          'Service Options',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 16,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 25),
            child: GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Text('Clear',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContainer('Source File', 0),
            // SizedBox(height: 10),
            buildContainer('Animation', 1),
            buildContainer('Customization', 2),
          ],
        ),
      ),
    );
  }
}
