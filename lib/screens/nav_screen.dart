import 'package:flutter/material.dart';
import 'package:grocery_ui/screens/home.dart';
import 'package:grocery_ui/screens/menu_screen.dart';
import 'package:grocery_ui/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    Home(),
    MenuScreen(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = const[
    Icons.home,
    MdiIcons.menu,
    Icons.shopping_bag_outlined,
    MdiIcons.accountCircleOutline,
  ];

  
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _icons.length, child: Scaffold(
      body: IndexedStack(
        index: _selectedIndex, children: _screens,),
      bottomNavigationBar: Padding(padding: EdgeInsets.only(bottom: 12.0),
      child: CustomTabBar(
        icons: _icons,
        selectedIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),),
    ));
  }
}
