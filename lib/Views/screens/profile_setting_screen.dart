import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/screens/general_notificaton_screen.dart';
import 'package:mybarraapp/Widgets/custom__field__view.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileSettingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text(
         'Setting',
         style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.w600,

         ),
       ),
        toolbarHeight: 40.sp,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.arrow_back_outlined, color: Colors.black, size: 25,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("General",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.grey
              ),),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.to(GeneralNotificationScreen());
                },
                child: CustomFieldIconView(
                  text: Text(
                    'Notifications'
                  ),
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text(
                  'Notification Sound'
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text(
                  'Security'
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text(
                  'Terms of Services'
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text(
                  'Privacy Policy'
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text(
                  'Language'
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldView(
                text: Text('Logout'),
                textStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
