import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FaviouratePageLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 40.sp,
        leading: Icon(Icons.close, color: Colors.black,),
        title: Text('Saved', style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('See something you like? Save it!', style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),),
            SizedBox(height: 10,),
            Text('Lists make it easier to compare services so that you \n           '
                '        can find just the right one for you.', style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.grey
            ),),
            TextButton(
              onPressed: () {  },
              child: Text('Start shopping', style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.blue
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
