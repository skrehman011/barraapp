import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Item_search_service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LogoDesginServicePage extends StatefulWidget {

  @override
  State<LogoDesginServicePage> createState() => _LogoDesginServicePageState();
}

class _LogoDesginServicePageState extends State<LogoDesginServicePage> {

  String? selectedChip = null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40.sp,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back, color: Colors.black, size: 30,)),
        actions: [
          Icon(Icons.search_rounded, color: Colors.black, size: 30,),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Logo Design', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),),
              SizedBox(height: 10,),
              Text(
                maxLines: null,
                'Hire a designer to create a logo for a new brand or give your existing logo a face lift.', style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black.withOpacity(.7),
              ),),
              SizedBox(height: 10,),

              Text('Shop by', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),),
              Container(
                child: ChipsChoice<String>.single(
                  value: selectedChip,
                  onChanged: (value) {
                    setState(() {
                      selectedChip = value;
                    });
                  },
                  choiceItems: [
                    C2Choice(value: "Style", label: "Style"),
                    C2Choice(
                      value: "Service Includes",
                      label: "Service Includes",
                    ),
                    C2Choice(
                        value: "Seller Level",
                        label: "Seller Level"),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 45.sp,
                        width: 35.w,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/book.png')),
                              Text(
                                "Flat",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 45.sp,
                        width: 35.w,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/pencile.png')),
                              Text(
                                "3D",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 45.sp,
                        width: 35.w,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/graphic.png')),
                              Text(
                                "Vintage",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return ItemSearchService();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
