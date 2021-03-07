import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';
class RelatedItemList extends StatelessWidget {

  final FreshProduceModel item;
  RelatedItemList({Key key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
                width: 190.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(color: shadowColor, blurRadius: 8.0, offset: Offset(4, 4)),
                  ],
                  border: Border.all(width: 0.9, color: shadowColor)
                ),
                child: Padding(padding: EdgeInsets.fromLTRB(50, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 100.0,
                        child: Text(item.name, overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(fontWeight: FontWeight.bold),)),
                    Container(width: 100.0,
                        child: Text('N${item.price}', overflow: TextOverflow.ellipsis, maxLines: 1, style: TextStyle(color: itemsTextColor, fontWeight: FontWeight.bold),)),
                  ],
                ),
                ),

              ),
              Positioned(
                left: 5.0,
                top: 15.0,
                bottom: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage(item.url),
                    fit: BoxFit.cover,
                    height: 10,
                  ),
                ),
              )
            ],

          ),
        ],
      ),
    );;
  }
}
