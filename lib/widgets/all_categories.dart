import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class AllCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => CategoryItem(category: categories[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: categories.length),
    );
  }
}
