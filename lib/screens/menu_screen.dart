import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/widgets/widgets.dart';
import '../widgets/menu_category.dart';
class MenuScreen extends StatefulWidget {
  static const routeName = "menu_screen";
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
        centerTitle: true,
        // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
    body: SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            //  display list of categories
            MenuCategory(),

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
}
