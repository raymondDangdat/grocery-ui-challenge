import 'package:flutter/material.dart';
import 'package:grocery_ui/colors/colors.dart';
import 'package:grocery_ui/widgets/widgets.dart';

class Home extends StatefulWidget {
  static const routeName = "home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: itemsTextColor,
            // expandedHeight: 130.0,
            shadowColor: shadowColor,
            title: Text(
              "Home",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            floating: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                ),
              )
            ],
          ),
          SliverPadding(padding: EdgeInsets.only(top: 20.0)),
          SliverToBoxAdapter(
            child: _buildSectionTitle('All Categories', () {}),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
            sliver: SliverToBoxAdapter(
              child: AllCategories(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            sliver: SliverToBoxAdapter(
                child: Row(
              children: [
                Text(
                  "Offers",
                  style: TextStyle(
                      fontSize: 13.33,
                      color: itemsTextColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )),
          ),
          SliverToBoxAdapter(
            child: _buildSectionTitle('Fresh Produce', () {}),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
            sliver: SliverToBoxAdapter(
              child: FreshProduce(),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildSectionTitle('Drinks', () {}),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 50.0),
            sliver: SliverToBoxAdapter(
              child: FreshProduce(),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }

  Widget _buildSectionTitle(String title, [Function onTap]) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 19.2,
                color: blackTextColor,
                fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: onTap ?? () {},
            child: Text(
              'See all',
              style: TextStyle(color: faintTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
