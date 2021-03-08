import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/screens/screens.dart';
class ItemList extends StatelessWidget {
  final FreshProduceModel item;


  ItemList({Key key, this.item}) : super(key: key);

  void onTap(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ItemDetailScreen(item: item)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 200,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(color: shadowColor, blurRadius: 8.0, offset: Offset(0, 2)),
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Hero(
                        tag: item.hashCode,
                          child: Image.asset(item.url))),
                ),
                Positioned(
                  right: 10.0,
                    top: 10.0,
                    child: IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}))
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Text(item.name),
          Text(item.description)
        ],
      ),
    );
  }
}
