import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;


  const CategoryItem({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          width: MediaQuery.of(context).size.width * 0.2,
          height: 100,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(color: shadowColor, blurRadius: 8.0),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
              child: SvgPicture.asset(category.url)),
        ),
        SizedBox(height: 8.0,),
        Text(category.name)
      ],
    );
  }
}
