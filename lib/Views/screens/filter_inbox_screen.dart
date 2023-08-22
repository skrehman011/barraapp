import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FilterInboxScreen extends StatefulWidget {
  @override
  _FilterInboxScreenState createState() => _FilterInboxScreenState();
}

class _FilterInboxScreenState extends State<FilterInboxScreen> {
  int selectedIndex = -1;

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndex == index) {
        selectedIndex = -1; // Deselect the current item if tapped again
      } else {
        selectedIndex = index;
      }
    });
  }

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
          child: Icon(Icons.clear, color: Colors.black, size: 30),
        ),
        title: Text(
          'Filter Inbox',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Inbox",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              buildFilterItem(Icons.all_inbox_rounded, "All", 0),
              buildFilterItem(Icons.mark_email_unread_outlined, "Unread", 1),
              buildFilterItem(Icons.star_rate_rounded, "Starred", 2),
              buildFilterItem(Icons.archive_outlined, "Archived", 3),
              buildFilterItem(Icons.do_disturb_alt_rounded, "Spam", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFilterItem(IconData icon, String title, int index) {
    final isSelected = selectedIndex == index;

    return Container(
      height: 33.sp,
      width: Get.width,
      margin: EdgeInsets.only(left: 6, right: 6, top: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.withOpacity(0.7)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.grey),
        title: Text(title),
        trailing: isSelected ? Icon(Icons.check, color: Colors.grey) : null,
        onTap: () => toggleSelection(index),
      ),
    );
  }
}
