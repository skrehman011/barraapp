import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TimelineLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              height: 44.sp,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(.7),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40.sp,
                    width: 30.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/editing.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 3.w),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2.w),
                        Text(
                          'edit your videos professionally',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 1.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 28.sp,
                              width: 28.w,
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(.4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Align(
                                child: Text(
                                  'Completed',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              '\$500',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              children: [
                Icon(
                  Icons.class_outlined,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Order Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 15.sp,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              // height: 95.sp,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.4)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    maintainState: true,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                        bottom: Radius.circular(10),
                      ),
                    ),
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Requirements received',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Please type here your requirements...',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10.sp,),
                            Text(
                              'Les documents sont deja envoyes avec toutes\nexigences dans le chat.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 20.sp,),
                            Text(
                              'Please attach requirements (if any)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10.sp,),
                            Row(
                              children: [
                                Icon(Icons.link),
                                Text(
                                  'Attachement_7326345.jpeg',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  ExpansionTile(
                     tilePadding: EdgeInsets.zero,
                    // maintainState: true,
                    // backgroundColor: Colors.transparent,

                    title: Text(
                      'Order created',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'January 18, 2022 - Order #BA90263274V35',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 5.sp,),
                          Divider(
                            thickness: .2,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10.sp,),
                          Row(
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                  maxLines: null,
                                  'be your mobile app user \ninterface designer'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '\$600',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 10),
                            child: Text(
                              '10 Revisions',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 10),
                            child: Text(
                              'Source File',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(height: 10.sp,),
                          Divider(
                            thickness: .2,
                            color: Colors.black,
                          ),
                          SizedBox(height: 10.sp,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '\$600',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.sp,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'February 18, 2022',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      )

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm_rounded,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 60.sp,
                  child: Divider(
                    thickness: .4,
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Icon(
                  Icons.alarm_rounded,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expected delivery\n18/2/2023",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Delivery date\n25/2/2023",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(53.sp, 30.sp),
                  ),
                  child: Text(
                    'Approve Work',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(53.sp, 30.sp),
                  ),
                  child: Text(
                    'Modification Request',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
