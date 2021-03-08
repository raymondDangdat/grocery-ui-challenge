import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';

class MenuCategoryItem extends StatefulWidget {
  final CategoryModel category;


  const MenuCategoryItem({Key key, this.category}) : super(key: key);

  @override
  _MenuCategoryItemState createState() => _MenuCategoryItemState();
}

class _MenuCategoryItemState extends State<MenuCategoryItem> {
  bool tapped = false;
  void onTap(BuildContext context, int index) {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          tapped = !tapped;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        height: 40,
        decoration: BoxDecoration(
          color: tapped ? primaryColor : itemsTextColor,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(color: shadowColor, blurRadius: 2.0, offset: Offset(2, 4)),
          ],
        ),
        alignment: Alignment.center,
        child: Text(widget.category.name, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),)
      ),
    );
  }
}
