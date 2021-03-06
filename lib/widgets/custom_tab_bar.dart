import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final isBottomIndicator;

  const CustomTabBar(
      {Key key,
        @required this.icons,
        @required this.selectedIndex,
        @required this.onTap,
        this.isBottomIndicator = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
          i,
          Tab(
            icon: Icon(
              e,
              color: i == selectedIndex
                  ? itemsTextColor
                  : Colors.black45,
              size: 30.0,
            ),
          )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}