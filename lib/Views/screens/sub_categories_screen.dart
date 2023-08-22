import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/screens/logo_desgin_service_page.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SubCategoriesScreen extends StatelessWidget {

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
          'SUb Categories',
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
      body: Padding(
        padding: EdgeInsets.only(left: 15,right: 15, top: 40, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/khalil.jpg'),
                      ),
                      SizedBox(height: 10,),
                      Text("Graphics & Design", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),),
                      SizedBox(height: 10,),
                      Text('you will find millions of creative talents', style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.grey,
                      ),)
                    ],
                  ),
                ),
              ),
              Text('LOGO & BRAND IDENTITY', style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: (){
                  Get.to(LogoDesginServicePage());
                },
                child: CustomFieldIconView(
                  text: Text('Logo Design'),
                  lastChild: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Brand Style Guides'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Business Cards & Stationery'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 20,),
              Text('ART & ILLUSTRATION',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey
              ),),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Illustration'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('NFT Art'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Pattern Design'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Portraits & Caricatures'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Cartoons & Comics'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
              SizedBox(height: 10,),
              CustomFieldIconView(
                text: Text('Tattoo Design'),
                lastChild: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
