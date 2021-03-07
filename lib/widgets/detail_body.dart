import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class DetailBody extends StatefulWidget {
  final FreshProduceModel item;


  const DetailBody({Key key, this.item}) : super(key: key);

  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0), ),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0, color: shadowColor, offset: Offset(20, 0)
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.item.name, style: TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600),),

                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), bottomLeft: Radius.circular(30.0))),
                        child: IconButton(icon: Icon(Icons.remove), onPressed: (){})),
                    SizedBox(width: 5.0,),
                    Text("1", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: 5.0,),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0))),
                        child: IconButton(icon: Icon(Icons.add), onPressed: (){})),
                  ],
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
            child: Row(
              children: [
                Text(widget.item.description, style: TextStyle(fontWeight: FontWeight.bold,),),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 0.0),
            child: Row(
              children: [
                Text('N${widget.item.price}',  style: TextStyle(fontWeight: FontWeight.bold, color: itemsTextColor)),
              ],
            ),
          ),

          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Text("This is just just a dummy text to give details of the item selected."),
          ),

          SizedBox(height: 20.0,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: [
                Text("Related Items", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),)
              ],
            ),
          ),


          SizedBox(height: 10,),
          RelatedItems(),
          SizedBox(height: 25.0,),
          
         ElevatedButton(
           style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
             onPressed: (){}, child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
               child: Text("Add to cart"),
             ))
        ],
      ),
    );
  }
}
