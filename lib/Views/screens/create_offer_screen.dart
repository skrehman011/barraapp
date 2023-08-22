import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Item_search_service.dart';
import 'package:mybarraapp/Views/screens/create_offer_part_two.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateOfferScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      toolbarHeight: 40.sp,
      leading: GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Icon(Icons.close, color: Colors.black, size: 30,),
      ),
      backgroundColor: Colors.white,
      title: Text(
        'Create an Offer',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
      
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 20),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Select Seller Service', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),),
                        Text('Change', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blue,
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    ItemSearchService(),
                    SizedBox(height: 10,),
                    Text(
                      'Describe your work',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 20),
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
                              child: Text("0/200", style: TextStyle(
                                  color: Colors.grey
                              ),))
                        ],
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 10, top: 15),
                      padding: EdgeInsets.all(10),
                      height: 33.sp,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey.withOpacity(.7)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Price', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                          Text('\$200', style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    CustomFieldIconView(
                      text: Text('Delivery Time'),
                      textStyle: TextStyle(
                        color: Colors.grey
                      ),
                      lastChild: Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.black,),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      padding: EdgeInsets.all(10),
                      height: 33.sp,
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey.withOpacity(.7)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How many revisions you want?', style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                          Text('05', style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),),
                        ],
                      ),
                    ),
                    Text(
                      'Add Options',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(CreateOfferPartTwo());
                      },
                      child: CustomFieldIconView(
                        text: Text('Services Options'),
                        textStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            CustomButton(onTap: (){},
                text: 'Send Custom Offer')

          ],
        ),

      ),
    );
  }
}
