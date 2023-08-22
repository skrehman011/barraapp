import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemPhysicalService extends StatelessWidget {
  // const ItemSearchService({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 150,
              width: 145,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes the position of the shadow
                  ),
                ],              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/editing.jpg',
                      fit: BoxFit.fitHeight,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(

                          'Cement',
                          textAlign: TextAlign.left,
                          style: TextStyle(

                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

