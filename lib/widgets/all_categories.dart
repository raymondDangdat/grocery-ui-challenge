import 'package:flutter/material.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class AllCategories extends StatelessWidget {
  final List<CategoryModel> _categories = [
    CategoryModel(
      name: "Fruits",
      url: "assets/images/banana.svg"

    ),

    CategoryModel(
        name: "Vegetables",
        url: "assets/images/banana.svg"
    ),

    CategoryModel(
        name: "Beverages",
        url: "assets/images/banana.svg"
    ),

    CategoryModel(
        name: "Meats",
        url: "assets/images/banana.svg"
    ),

    CategoryModel(
        name: "Drinks",
        url: "assets/images/banana.svg"

    ),

    CategoryModel(
        name: "Toiletries",
        url: "assets/images/toileteries.svg"
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => CategoryItem(category: _categories[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: _categories.length),
    );
  }
}
