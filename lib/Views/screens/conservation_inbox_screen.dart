import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/message__page__layout.dart';
import 'package:mybarraapp/Views/screens/create_offer_screen.dart';
import 'package:mybarraapp/Views/screens/inbox_order_with_seller.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class ConservationInboxScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.sp,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_sharp, color: Colors.black, size: 30,),),
        title: ListTile(
          leading: Badge(
            alignment: Alignment.bottomCenter,
            backgroundColor: Colors.transparent,
            offset: Offset(18, -5),
            label: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
              ),
              child: Text("2", style: TextStyle(fontSize: 8),),
            ),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/khalil.jpg'),
            ),
          ),
          title: Text(
            'Sophia Jane',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            'Last Seen 3 hour ago',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          ),
        ),
        actions: [
          Container(
            width: 35.sp,
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.to(InboxOrderWithSeller());
                    },
                    child: Icon(Icons.class_outlined, color: Colors.black,)),
                GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'More Options',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text(
                                    'Mark as Unread',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  'Star',
                                  style: TextStyle(
                                      fontSize: 14),
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: (){},
                                  child: Text(
                                    'Archive',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                GestureDetector(
                                  onTap: (){
                                    Get.defaultDialog(
                                        title: '',
                                        content: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Icon(Icons.do_disturb_alt_rounded, size: 40,color: Colors.grey,),
                                            ),
                                            SizedBox(height: 20.sp,),
                                            Text(
                                              "Confirmation",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Are you sure, you want to block \n'
                                                  '                   this seller?',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 30,),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 30),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Get.to(MessagePageLayout());
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Colors.black,
                                                      minimumSize: Size(25.w, 27.sp),
                                                    ),
                                                    child: Text(
                                                      'Yes',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Get.to(ConservationInboxScreen());
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      primary: Colors.red,
                                                      minimumSize: Size(25.w, 27.sp),
                                                    ),
                                                    child: Text(
                                                      'No',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            )
                                          ],
                                        ));
                                  },
                                  child: Text(
                                    'Block Seller',
                                    style: TextStyle(
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  'Delete Chat',
                                  style: TextStyle(
                                      fontSize: 14),
                                ),
                                SizedBox(height: 30,),
                                CustomButton(onTap: (){
                                  Navigator.pop(context);
                                }, text: 'Cancel')
                              ],
                            ),
                          );
                        },
                      );

                    },
                    child: Icon(Icons.menu_outlined, color: Colors.black,)),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    heightFactor: 3,
                    child: Text(
                      'Jan22, 2022',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 55.sp,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/images/khalil.jpg'),
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Khalil ur Rehman',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          SizedBox(width: 25,),
                          Text("10:32 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      subtitle: Text("Hey Rahman, \n "
                          'I hope you are doing well, actually I am'
                          'looking for a video editor for my wedding'
                          'vlogs. So I just got through your profile and'
                          ' I think you are good for my work.Are you available?',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 55),
                    height: 55.sp,
                    child: ListTile(
                      trailing: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/images/khalil.jpg'),
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Khalil ur Rehman',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          SizedBox(width: 25,),
                          Text("10:32 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      subtitle: Text("Hey Rahman, \n "
                          'I hope you are doing well, actually I am'
                          'looking for a video editor for my wedding'
                          'vlogs. So I just got through your profile and'
                          ' I think you are good for my work.Are you available?',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 67.sp,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 18,
                            backgroundImage: AssetImage('assets/images/khalil.jpg'),
                          ),
                          title: Row(
                            children: [
                              Text(
                                'Khalil ur Rehman',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12
                                ),
                              ),
                              SizedBox(width: 25,),
                              Text("10:32 AM",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.grey
                                ),
                              )
                            ],
                          ),
                          subtitle: Text(
                            maxLines: null,
                            "Hey Rahman, \n "
                              'I hope you are doing well, actually I am'
                              'looking for a video editor for my wedding',
                               style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10,left: 71,),
                              height: 35.sp,
                              width: 30.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/song2.jpg'),
                                fit: BoxFit.cover,
                              )
                              ),
                              child: Center(
                                child: Icon(Icons.play_circle_outline, color: Colors.white,),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10,left: 10,),
                              height: 35.sp,
                              width: 30.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/song1.jpg'),
                                  fit: BoxFit.cover
                                )
                              ),
                              child: Center(
                                child: Icon(Icons.play_circle_outline, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70,),
                          child: TextButton(
                            onPressed: () {  },
                            child: Text(
                              'Download all',
                              style: TextStyle(
                                color: Colors.blue,

                              ),
                            ),

                          )
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 55),
                    height: 55.sp,
                    child: ListTile(
                      trailing: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/images/khalil.jpg'),
                      ),
                      title: Row(
                        children: [
                          Text(
                            'Khalil ur Rehman',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          SizedBox(width: 25,),
                          Text("10:32 AM",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      subtitle: Text("Hey Rahman, \n "
                          'I hope you are doing well, actually I am'
                          'looking for a video editor for my wedding'
                          'vlogs. So I just got through your profile and'
                          ' I think you are good for my work.Are you available?',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            decoration: BoxDecoration(
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [

                       GestureDetector(
                           onTap: (){
                             showModalBottomSheet<void>(
                               context: context,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(10),
                                   topRight: Radius.circular(10),
                                 ),
                               ),
                               builder: (BuildContext context) {
                                 return Container(
                                   padding: EdgeInsets.all(16),
                                   child: Column(
                                     mainAxisSize: MainAxisSize.min,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         'Quick Response',
                                         style: TextStyle(
                                           fontSize: 16,
                                           fontWeight: FontWeight.bold,
                                         ),
                                       ),
                                       SizedBox(height: 16),
                                       Row(
                                         children: [
                                           Expanded(
                                             child: Text(
                                               'Sure, let’s get started',
                                               style: TextStyle(fontSize: 14),
                                             ),
                                           ),
                                           IconButton(
                                             icon: Icon(Icons.close),
                                             onPressed: () {
                                               Navigator.pop(context);
                                             },
                                           ),
                                         ],
                                       ),
                                       Row(
                                         children: [
                                           Expanded(
                                             child: Text(
                                               'Insteresting, but I need more info',
                                               style: TextStyle(fontSize: 14),
                                             ),
                                           ),
                                           IconButton(
                                             icon: Icon(Icons.close),
                                             onPressed: () {
                                               Navigator.pop(context);
                                             },
                                           ),
                                         ],
                                       ),
                                       Row(
                                         children: [
                                           Expanded(
                                             child: Text(
                                               'Send me your portfolio please!',
                                               style: TextStyle(fontSize: 14),
                                             ),
                                           ),
                                           IconButton(
                                             icon: Icon(Icons.close),
                                             onPressed: () {
                                               Navigator.pop(context);
                                             },
                                           ),
                                         ],
                                       ),
                                       CustomButton(onTap: (){
                                         Navigator.pop(context);
                                       }, text: 'Cancel')
                                     ],
                                   ),
                                 );
                               },
                             );

                           },
                           child: Icon(Icons.electric_bolt_outlined)),
                        SizedBox(width: 10,),
                        GestureDetector(
                            onTap: (){
                              showModalBottomSheet<void>(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  return Container(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Select Attachment Option',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 16),
                                        GestureDetector(
                                          onTap: (){},
                                          child: Text(
                                            'Insert Images',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Text(
                                          'Choose File',
                                          style: TextStyle(
                                              fontSize: 14),
                                        ),
                                        SizedBox(height: 30,),
                                        CustomButton(onTap: (){
                                          Navigator.pop(context);
                                        }, text: 'Cancel')
                                      ],
                                    ),
                                  );
                                },
                              );

                            },
                            child: Icon(Icons.camera_alt)),

                      ],
                    ),
                    GestureDetector(
                        onTap: (){
                          Get.to(CreateOfferScreen());
                        },
                        child: Text('Create an Offer')),
                    Icon(Icons.send_rounded),
                  ],
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type a message...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    )
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}

