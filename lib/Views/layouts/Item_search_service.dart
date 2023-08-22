import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemSearchService extends StatelessWidget {
  // const ItemSearchService({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 6,),
      margin: EdgeInsets.symmetric(vertical: 10,),
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Container(
              height: Get.height,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/servic.png")
                  )
              )
          ),
          SizedBox(width: 10,),
          Expanded(child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow,),
                      Text("5.0", style: TextStyle(
                        color: Colors.yellow
                      )),
                      Text("(346)")
                    ],
                  ),

                  Icon(Icons.favorite_border, color: Colors.grey.withOpacity(.7),)
                ],
              ),
              Text("edit your videos professionally", style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.grey.withOpacity(.7),
              ),),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text("\$200.0")),
            ],))
        ],
      ),
    );
  }
}
