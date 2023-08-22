import 'package:flutter/material.dart';
import 'package:mybarraapp/Views/layouts/chat_layout.dart';
import 'package:mybarraapp/Views/layouts/timeline_layout.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 45.sp,
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Sophia_jane',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          actions: [
            Icon(
              Icons.format_list_numbered_rtl,
              color: Colors.black,
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'Timeline',

            ),
            Tab(
              text: 'Chat',
            ),
          ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,

          ),
        ),
        body: TabBarView(
          children: [
            TimelineLayout(),
            ChatLayout(),
          ],
        ),
      ),
    );
  }
}
