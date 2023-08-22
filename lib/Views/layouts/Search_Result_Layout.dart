import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:mybarraapp/Views/layouts/Item_search_service.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SearchResult extends StatefulWidget {
  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  String? selectedChip = null;
  String? selectedBy = null;

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
                    onTap: () {},
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: ImageIcon(
                        color: Colors.grey,
                        AssetImage(
                          "assets/images/search.png",
                        ),
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
            Container(
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(15),
                child: IconButton(
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage("assets/images/flitter.png"),
                    size: 90,
                    color: Colors.grey,
                  ),
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ChipsChoice<String>.single(
                    value: selectedBy,
                    onChanged: (value) {
                      setState(() {
                        selectedBy = value;
                      });
                    },
                    choiceItems: [
                      C2Choice(value: "Video editing", label: "Video Editing"),
                      C2Choice(
                        value: "Graphics",
                        label: "Graphics Designing",
                      ),
                      C2Choice(value: "Programming", label: "Programming"),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Shop by",
                      textAlign: TextAlign.left,
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ChipsChoice<String>.single(
                    value: selectedChip,
                    onChanged: (value) {
                      setState(() {
                        selectedChip = value;
                      });
                    },
                    choiceItems: [
                      C2Choice(value: "Categories", label: "Categories"),
                      C2Choice(
                        value: "Level 01 Provider",
                        label: "Level 01 Provider",
                      ),
                      C2Choice(
                          value: "Level 02 Provider",
                          label: "Level 02 Provider"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 100,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 40.sp,
                          width: 40.w,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Column(
                                children: [
                                  Text(
                                    "36K services",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Video Editing",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 40.sp,
                          width: 40.w,
                          margin: EdgeInsets.only(right: 10),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Column(
                                children: [
                                  Text(
                                    "36K services",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Video Editing",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          height: 40.sp,
                          width: 40.w,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Column(
                                children: [
                                  Text(
                                    "36K services",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "Video Editing",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemSearchService();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
