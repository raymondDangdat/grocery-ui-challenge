import 'package:flutter/material.dart';
import 'package:grocery_ui/size_config.dart';
class CartItemsWidget extends StatefulWidget {
  final String id;
  final int price;
  int quantity;
  final String name;
  final String imgUrl;
  double total;


  CartItemsWidget({this.id, this.price, this.quantity, this.name, this.imgUrl, this.total});

  @override
  _CartItemsWidgetState createState() => _CartItemsWidgetState();
}

class _CartItemsWidgetState extends State<CartItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(widget.imgUrl),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                SizedBox(height: getProportionateScreenHeight(10),),
                Text("Rich in Nutrients", style: TextStyle(fontWeight: FontWeight.w600),)
              ],
            ),
          ),

          Column(
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Icons.remove_circle), onPressed: (){
                    setState(() {
                      if (widget.quantity > 1) {
                        widget.total -= widget.price;
                        widget.quantity--;
                      } else {
                        //  Delete item from cart
                        // _deleteCartItem(index, this.widget.cartItem[index].id);
                      }
                    });

                  }) ,
                  Text(widget.quantity.toString(), style: TextStyle(fontWeight: FontWeight.bold),),

                  IconButton(icon: Icon(Icons.add_circle), onPressed: (){
                    setState(() {
                      widget.total += this.widget.price;
                      widget.quantity++;
                    });

                  })
                ],
              ),
              Text('\$${widget.price}'),
              SizedBox(height: getProportionateScreenHeight(10),)
            ],
          )
        ],
      )
    );
  }
}
