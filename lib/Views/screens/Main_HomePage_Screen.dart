// import 'package:barraappdesign/main.dart';
// import 'package:barraappdesign/views/layouts/favourite.dart';
// import 'package:barraappdesign/views/layouts/home_page.dart';
// import 'package:barraappdesign/views/layouts/searchlayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:mybarraapp/Views/layouts/Home_page_Layout.dart';
import 'package:mybarraapp/Views/layouts/Item_search_service.dart';
import 'package:mybarraapp/Views/layouts/Search_Layout.dart';
import 'package:mybarraapp/Views/layouts/faviourate_page_layout.dart';
import 'package:mybarraapp/Views/layouts/message__page__layout.dart';
import 'package:mybarraapp/Views/layouts/profile_page_layout.dart';
import 'package:mybarraapp/Widgets/bottomNaigation/sliding_clipped_nav_bar.dart';

import '../../Widgets/bottomNaigation/src/model/menu_item.dart';

class MainHomePageScreen extends StatefulWidget {

  @override
  State<MainHomePageScreen> createState() => _MainHomePageScreenState();
}

class _MainHomePageScreenState extends State<MainHomePageScreen> {

  int selectedIndex = 0;
  PageController controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        controller: controller,
        onPageChanged: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        children: [
          MessagePageLayout(),
          SearchLayout(),
          HomePage(),
          FaviouratePageLayout(),
          ProfilePageLayout(),



        ],
      ),

      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          controller.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        activeColor: Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.message_outlined,
            title: 'Messages',
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
          ),
          BarItem(
            icon: Icons.home_outlined ,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.favorite_border ,
            title: 'Favourite',
          ),

          BarItem(
            icon: Icons.supervised_user_circle_outlined,
            title: 'Profile',
          ),

        ],
      ),
    );
  }
}
