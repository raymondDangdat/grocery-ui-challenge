import 'package:flutter/material.dart';
import 'package:grocery_ui/models/models.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class ItemDetailScreen extends StatelessWidget {
  static const routeName = 'item-detail';
  final FreshProduceModel item;

  const ItemDetailScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Header(item: item),
            DetailBody(item: item),
          ],
        ),
      )),
    );
  }
}
