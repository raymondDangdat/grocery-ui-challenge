import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class MenuCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => MenuCategoryItem(category: categories[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: categories.length),
    );
  }
}
