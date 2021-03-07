import 'package:flutter/material.dart';
import 'package:grocery_ui/models/models.dart';

import 'widgets.dart';

class FreshProduce extends StatelessWidget {
  final List<FreshProduceModel> _freshProduce = [
    FreshProduceModel(
      name: "Organic Moss",
      description: "Avocados",
      url: "assets/images/avocado.png"
    ),
    FreshProduceModel(
        name: "Ginger",
        description: "Ginja",
        url: "assets/images/ginger.png"
    ),
    FreshProduceModel(
        name: "Organic Banana",
        description: "Cion",
        url: "assets/images/bananas.png"
    ),
    FreshProduceModel(
        name: "Pepper",
        description: "Pepperish",
        url: "assets/images/pepper.png"
    ),
    FreshProduceModel(
        name: "Organic Moss",
        description: "Avocados",
        url: "assets/images/avocado.png"
    ),
    FreshProduceModel(
        name: "Organic Moss",
        description: "Avocados",
        url: "assets/images/avocado.png"
    ),
    FreshProduceModel(
        name: "Organic Moss",
        description: "Avocados",
        url: "assets/images/avocado.png"
    ),
    FreshProduceModel(
        name: "Organic Pulses",
        description: "Pulse",
        url: "assets/images/pulses.png"
    ),
    FreshProduceModel(
        name: "Fruits",
        description: "Fresh Fruits",
        url: "assets/images/fresh_fruits.png"
    ),
    FreshProduceModel(
        name: "Organic Apple",
        description: "Apples",
        url: "assets/images/apples.png"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => ItemList(item: _freshProduce[index]),
          separatorBuilder: (_ , __) => SizedBox(width: 10.0,),
          itemCount: _freshProduce.length),
    );
  }
}
