import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_ui/data/data.dart';
import 'package:grocery_ui/size_config.dart';
import 'package:grocery_ui/widgets/widgets.dart';
class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  @override
  void initState() {
    _getTotal();

    super.initState();
  }


  double _total;
  _getTotal() {
    _total = 0.0;
    cartItems.forEach((item) {
      setState(() {
        _total += (item.price) * item.qty;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        brightness: Brightness.dark,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("Cart"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: (){
            Navigator.of(context).pop();
          })
        ],
      ),

      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30),),
            Container(
              height: SizeConfig.screenHeight * 0.4,
              child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) => CartItemsWidget(
                    id: cartItems[index].id,
                    name: cartItems[index].name,
                    quantity: cartItems.toList()[index].qty,
                    price: cartItems.toList()[index].price,
                    imgUrl: cartItems[index].imgUrl,
                    total: _total,
                  )),
            ),

            // SizedBox(height: getProportionateScreenHeight(30),),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: ListTile(leading: IconButton(icon: Icon(Icons.receipt), onPressed: (){

                }),
                  title: TextField(
                    decoration: InputDecoration(hintText: "Enter Coupon",
                    border: InputBorder.none),
                  ),
                  trailing: ElevatedButton(onPressed: (){}, child: Text("Apply")),
                ),
              ),
            ),

            SizedBox(height: getProportionateScreenHeight(10),),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Card(
                    child: new ListTile(
                      leading: Text("Sub Total"),
                      trailing: Text("\$500"),
                    ),
                  ),

                  SizedBox(height: 10.0,),
                  Card(
                    child: new ListTile(
                      leading: Text("Delivery"),
                      trailing: Text("\$500"),
                    ),
                  ),

                  SizedBox(height: 10.0,),
                  Card(
                    child: new ListTile(
                      leading: Text("Total"),
                      trailing: Text("\$$_total"),
                    ),
                  )
                ],
              ),
            ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          width: SizeConfig.screenWidth,
          child: ElevatedButton(
              onPressed: (){}, child: Text("Checkout")),
        )
          ],
        ),
      )),
    );
  }
}
