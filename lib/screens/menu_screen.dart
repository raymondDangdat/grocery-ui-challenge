import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/data/data.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class MenuScreen extends StatefulWidget {
  static const routeName = "menu_screen";
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int activeCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0.0,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        // title: Text("Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
        centerTitle: true,
        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}, color: Colors.black)
        ],
      ),
    body: SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            //  display list of categories
            // MenuCategory(),
            Container(
              height: 40.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => _menuCategoryItem(category: categories[index], index: index),
                  separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
                  itemCount: categories.length),
            ),

            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Item", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19.2, color: blackTextColor),),
                IconButton(icon: Icon(Icons.list), onPressed: (){}, iconSize: 30.0,),
              ],
            ),

          //  List of Popular Items
            FreshProduce(isMenuItems: true,),

          ],
        ),
      ),
    )),




    );
  }

  _menuCategoryItem({CategoryModel category, int index}) {
    return GestureDetector(
      onTap: (){
        setState(() {
          activeCategory = index;
        });
      },
      child: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: 40,
          decoration: BoxDecoration(
            color: activeCategory == index ? itemsTextColor : primaryColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30.0,), bottomRight: Radius.circular(30.0), topLeft: Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(color: shadowColor, blurRadius: 2.0, offset: Offset(2, 4)),
            ],
          ),
          alignment: Alignment.center,
          child: Text(category.name, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: activeCategory == index ? primaryColor : blackTextColor),)
      ),
    );
  }
}
