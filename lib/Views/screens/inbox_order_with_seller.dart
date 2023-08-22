import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/screens/tab_bar_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../layouts/timeline_layout.dart';

class InboxOrderWithSeller extends StatelessWidget {

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
          'Orders with Sophia_jane',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                'Previous Orders',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              GestureDetector(
                onTap: (){
                 Get.to(TabbarScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  padding: EdgeInsets.all(10),
                  height: 52.sp,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(.7),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 35.sp,
                            width: 25.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/editing.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 3.w,),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text('Khalil ur Rehman', style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),),
                                  SizedBox(width: 5.w,),
                                  Text('\$600', style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 10.sp,),
                              Text(
                                maxLines: null,
                                'edit your videos professionally', style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),),
                            ],
                          )
                        ],
                      ),
                      Divider(thickness: .3, color: Colors.grey,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Jan 16, 2023', style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),),
                          Container(
                            height: 28.sp,
                            width: 35.w,
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.withOpacity(.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              child: Text(
                                'In Progress',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.all(10),
                height: 52.sp,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.7),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35.sp,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/editing.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                ),
                                SizedBox(width: 2.w,),
                                Text('Khalil ur Rehman', style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 5.w,),
                                Text('\$120', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),)
                              ],
                            ),
                            SizedBox(height: 10.sp,),
                            Text(
                              maxLines: null,
                              'edit your videos professionally', style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),),
                          ],
                        )
                      ],
                    ),
                    Divider(thickness: .3, color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jan 16, 2023', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),),
                        Container(
                          height: 28.sp,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            child: Text(
                              'Completed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.all(10),
                height: 52.sp,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.7),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35.sp,
                          width: 25.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/editing.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 3.w,),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage('assets/images/khalil.jpg'),
                                ),
                                SizedBox(width: 2.w,),
                                Text('Khalil ur Rehman', style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 5.w,),
                                Text('\$320', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),)
                              ],
                            ),
                            SizedBox(height: 10.sp,),
                            Text(
                              maxLines: null,
                              'edit your videos professionally', style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),),
                          ],
                        )
                      ],
                    ),
                    Divider(thickness: .3, color: Colors.grey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jan 16, 2023', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),),
                        Container(
                          height: 28.sp,
                          width: 35.w,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            child: Text(
                              'Completed',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
