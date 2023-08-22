import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/layouts/Item_search_service.dart';
import 'package:mybarraapp/Widgets/CustomFieldLeadingIcon.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom_field_icon_view.dart';
import 'package:mybarraapp/Widgets/custom_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentsScreen extends StatefulWidget {

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.sp,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Icon(Icons.close, color: Colors.black, size: 25,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reservation & payment',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    'Change',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.blue
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              ItemSearchService(),
              SizedBox(height: 20,),
              Text(
                'Describe your work',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
              Container(
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
              SizedBox(height: 20,),
              Text(
                'Time & Address',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldIconView(
                text: Text('Date & Time of Appointment', ),
                textStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15,),
              CustomTextField(hintText: "Meeting Address"),
              SizedBox(height: 15,),
              CustomTextField(hintText: "Phone Number"),
              SizedBox(height: 20,),
              Text(
                'Payment Methods',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 15,),
             CustomFieldLeadingIcon(firstChild: Image(
               image: AssetImage('assets/images/visa.png'),
             ),
             text: Text('Credit Card'),
               textStyle: TextStyle(
                 color: Colors.black,
                 fontWeight: FontWeight.w400,
                 fontSize: 13,
               ),
             ),
              SizedBox(height: 15,),
              CustomFieldLeadingIcon(firstChild: Image(
                image: AssetImage('assets/images/paypal.png'),
              ),
                text: Text('Paypal Single Click'),
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 15,),
              CustomFieldLeadingIcon(firstChild: Image(
                image: AssetImage('assets/images/mobicash.png'),
              ),
                text: Text('Cash Payment'),
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),SizedBox(height: 15,),
          CustomFieldLeadingIcon(firstChild: Image(
            image: AssetImage('assets/images/orange.png'),
          ),
            text: Text('Orange Money'),
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(value: check, onChanged: (bool? value){
                    setState((){
                      check =  value!;
                    });
                  }),
                  Text('By joining I agree to receive emails from Baara+',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
              SizedBox(height: 20,),
              CustomButton(onTap: (){}, text: 'Send Customer Offer'),
            ],
          ),
        ),
      ),
    );
  }
}
