import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mybarraapp/Views/layouts/Search_Result_Layout.dart';
import 'package:mybarraapp/Views/screens/filtter__screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchLayout extends StatefulWidget {
  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  String? selectedChip = null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          title: Container(
            width: 90.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(.2),
                    style: BorderStyle.solid)),
            child: TextField(
              decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: (){
                      Get.to(SearchResult());
                    },
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: ImageIcon(
                        color: Colors.grey,
                        AssetImage("assets/images/search.png",),
                      ),
                    ),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle:
                  TextStyle(color: Color(0xFF41485B).withOpacity(0.4))),
            ),
          ),
          backgroundColor: Colors.white,
          leading: SizedBox(),
          leadingWidth: 0,
          actions: [
            InkWell(
              onTap: (){
                Get.to(FillterPage());
              },
              child: Container(
                width: 50,
                height: 60,
                child: Image.asset("assets/images/flitter.png"),
              ),
            ),
          ],

        ),
        body: Center(
          child:Text("No Search Results!", style: TextStyle(
            color: Color(0xFF5B606D),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),) ,
        ),),
    );
  }
}
