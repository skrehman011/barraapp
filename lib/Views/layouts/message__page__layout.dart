import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybarraapp/Views/screens/Simple_Barra_Page.dart';
import 'package:mybarraapp/Views/screens/conservation_inbox_screen.dart';
import 'package:mybarraapp/Views/screens/filter_inbox_screen.dart';

class MessagePageLayout extends StatefulWidget {
  const MessagePageLayout({Key? key}) : super(key: key);

  @override
  MessagePageLayoutState createState() => MessagePageLayoutState();
}

class MessagePageLayoutState extends State<MessagePageLayout> {
  @override
  Widget build(BuildContext context) {
    return SimpleBarraPage(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Inbox",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(FilterInboxScreen());
                    },
                      child: ImageIcon(AssetImage('assets/images/filtericon.png'))),
                ],
              ),
              SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap:(){
                            Get.to(ConservationInboxScreen());
                          },
                          leading: Badge(
                            alignment: Alignment.bottomCenter,
                            backgroundColor: Colors.transparent,
                            offset: Offset(15, -5),
                            label: Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow
                              ),
                              child: Text("1",style: TextStyle(fontSize: 15),),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/khalil.jpg'),
                            ),
                          ),
                          title: Text('John Doe'),
                          subtitle: Text('Hello John, \n I am looking for video editior for...'),
                          trailing: Text('2h ago'),
                        ),
                        Divider(
                          thickness: 0.2,
                          endIndent: 15,
                          indent: 50,
                          color: Colors.black,
                        ),
                      ],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
