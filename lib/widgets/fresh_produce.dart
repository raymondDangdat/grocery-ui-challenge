import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'widgets.dart';

class FreshProduce extends StatelessWidget {
  final bool isMenuItems;

  const FreshProduce({Key key,  this.isMenuItems = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !isMenuItems ? Container(
      height: 200.0,
      child:  ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => ItemList(item: freshProduce[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: freshProduce.length),
    ) : Container(
      height: MediaQuery.of(context).size.height * 0.90,
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 200.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  MediaQuery.of(context).size.width >= 600.0 ? 3 : 2 ),
          itemCount: popular_items.length,
          shrinkWrap: true,
          // scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, int index) {
            ///return the food items title, image etc.
            return ItemList(item: popular_items[index]);
          }),

    );
  }
}
