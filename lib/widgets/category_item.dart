import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/size_config.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;


  const CategoryItem({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          width: getProportionateScreenWidth(90),
          height: 60,
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(color: faintTextColor, blurRadius: 3.0),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
              child: SvgPicture.asset(category.url)),
        ),
        SizedBox(height: 8.0,),
        Text(category.name, style: TextStyle(color: blackTextColor, fontWeight: FontWeight.bold),)
      ],
    );
  }
}
