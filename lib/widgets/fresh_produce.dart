import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'widgets.dart';

class FreshProduce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => ItemList(item: freshProduce[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: freshProduce.length),
    );
  }
}