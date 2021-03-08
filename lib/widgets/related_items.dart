import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class RelatedItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => RelatedItemList(item: freshProduce[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: freshProduce.length),
    );
  }
}
