import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PostRequestScreen extends StatelessWidget {

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
          child: Icon(Icons.close, color: Colors.black,size: 25,),
        ),
        title: Text(
          'Post Request',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How do requests work?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                maxLines:null,
                'Post a request to our seller community. Sellers will\n send their offers and you can choose who you would\n like to work with. Once you decide, you can purchase\n their service.',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.sp,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  textAlign:TextAlign.right,
                  'Got it',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                textAlign:TextAlign.right,
                'Add a description to your request',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 50.sp,
                width: Get.width,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'e.g. your work details, your timeline, work \nreferences (if any) and more...',
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey
                          )
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text("0/300", style: TextStyle(
                            color: Colors.red
                        ),))
                  ],
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                textAlign:TextAlign.right,
                'Choose a category',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.sp,),
              CustomFieldIconView(
                text: Text("Category"),
              ),
              SizedBox(height: 15.sp,),
              CustomFieldIconView(
                text: Text(
                  'Sub-Category'
                ),
              ),
              SizedBox(height: 20.sp,),
              Text(
                textAlign:TextAlign.right,
                'When would you like your service delivered?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                height: 34.sp,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 90.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(.2),
                    style: BorderStyle.solid,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Time',
                      style:
                          TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                          ),
                    ),
                  ],
                ),
              ),
              Text(
                textAlign:TextAlign.right,
                'Budget',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15.sp,),
              CustomTextField(hintText: 'Min \$10'),
              SizedBox(height: 20.sp,),
              CustomButton(onTap: (){}, text: 'Submit Your Request'),
            ],
          ),
        ),
      ),
    );
  }
}
