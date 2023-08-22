import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Item_digital_service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../layouts/Item_Add_Services.dart';

class SellAllDigitalPage extends StatelessWidget {

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
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30,)),
        title: Text(
          'Categories',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.black
          ),
        ),
        actions: [
          Icon(Icons.search_rounded, color: Colors.black, size: 30,),
        ],
      ),
      body: Container(
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          children: List.generate(
            12, // 2 rows * 6 columns = 12 items
                (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 3),
              child: ItemDigitalService(),
            ),
          ),
        ),
      ),
    );
  }
}
