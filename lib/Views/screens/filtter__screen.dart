import 'package:flutter/material.dart';
import 'package:mybarraapp/Widgets/Custom_button.dart';
import 'package:mybarraapp/Widgets/custom__field__swtich_view.dart';
import 'package:mybarraapp/Widgets/custom__field__view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FillterPage extends StatefulWidget {

  
  @override
  State<FillterPage> createState() => _FillterPageState();
}

class _FillterPageState extends State<FillterPage> {
  List<String> item = [
    "Level 1",
    "Level 2",
    "Level 3",
  ];List<String> item1 = [
    "English",
    "Chinese",
    "Urdu",
  ];List<String> item2 = [
    "Pakistan",
    "Canada",
    "China",
  ];

  String? selectLevel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        title: Text(
            "Filters",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        backgroundColor: Colors.white,
        leading:Icon(Icons.dangerous_outlined,
        color: Colors.black,),
        actions: [
          Container(
            padding: EdgeInsets.only(top: 30, right: 20),
            child: Text("Clear",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.blue,
            ),),
          )
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10,),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 17,),
                CustomFieldSwitchView(),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(right: 230),
                    child: Text("Category",)),
                SizedBox(height: 10,),
                CustomFieldView(text: Text('Relevance'),),
                SizedBox(height: 10,),
                CustomFieldView(text: Text('Best Selling'),),
                SizedBox(height: 10,),
                CustomFieldView(text: Text('New Arrival'),),
                SizedBox(height: 20,),
                Container(
                    padding: EdgeInsets.only(right: 260),
                    child: Text("Filters",)),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 33.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey.withOpacity(.5)),
                  ),
                  child: ListTile(
                    title: Text('Price Range',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                    ),),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Container(
                        padding: EdgeInsets.only(top: 17),
                        height: 35,
                        width: 29.sp,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:'\$10',
                            hintStyle: TextStyle(
                              color: Colors.blue.withOpacity(.4)
                            )
                          ),
                        ),
                      ),
                      Text("to"),
                        Container(
                          padding: EdgeInsets.only(top: 17),
                          margin: EdgeInsets.only(left: 10),
                          height: 35,
                          width: 33.sp,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText:'\$1000',
                                hintStyle: TextStyle(
                                    color: Colors.blue.withOpacity(.4)
                                )
                            ),
                          ),
                        ),
                    ],),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 33.sp,
                  padding: EdgeInsets.only(left: 15, top: 4),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.withOpacity(.6)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                      underline: SizedBox(),
                      value: selectLevel,
                      hint: Text('Select Seller Level', style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                      items: item.map((level) {
                    return DropdownMenuItem(
                        value: level,
                        child: Text(level));
                  }).toList(),
                      onChanged: (String? value){
                    setState(() {
                      selectLevel=value!;
                    });
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 33.sp,
                  padding: EdgeInsets.only(left: 15, top: 4),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.withOpacity(.6)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                      underline: SizedBox(),
                      value: selectLevel,
                      hint: Text('Select Seller Language', style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                      items: item1.map((level) {
                    return DropdownMenuItem(
                        value: level,
                        child: Text(level));
                  }).toList(),
                      onChanged: (String? value){
                    setState(() {
                      selectLevel=value!;
                    });
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  height: 33.sp,
                  padding: EdgeInsets.only(left: 15, top: 4),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.withOpacity(.6)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                      underline: SizedBox(),
                      value: selectLevel,
                      hint: Text('Seller Location', style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                      items: item2.map((level) {
                    return DropdownMenuItem(
                        value: level,
                        child: Text(level));
                  }).toList(),
                      onChanged: (String? value){
                    setState(() {
                      selectLevel=value!;
                    });
                  }),
                ),
                CustomButton(onTap: (){}, text: 'Apply')

              ],
            ),
          ),
        ),
      ),
    );
  }
}
