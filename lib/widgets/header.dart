import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/models/models.dart';

class Header extends StatelessWidget {
  final FreshProduceModel item;


  const Header({Key key, this.item}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1,
      child: ClipPath(
        // clipper: MyClipper(),
        child: Container(
          padding:
          const EdgeInsets.only(left: 10, right: 15, top: 20, bottom: 0.0),
          decoration: BoxDecoration(
            // color: Colors.grey[300],
          ),
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(Icons.chevron_left,
                            color: appBarIconsColor, size: 30),
                      ),
                      IconButton(icon: Icon(Icons.search), onPressed: (){}),
                    ],
                  ),
                  Hero(
                    tag: item.name,
                    child: Image.asset(
                      item.url,
                      width: constraints.maxWidth * 0.6,
                      height: constraints.maxHeight * 0.6,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );;
  }
}
