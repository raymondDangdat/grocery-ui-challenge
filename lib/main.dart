import 'package:flutter/material.dart';
import './screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
          fontFamily: "Poppins",
      ),
      home: NavScreen(),
      routes: {
        Home.routeName: (context) => Home(),
        ItemDetailScreen.routeName: (context) => ItemDetailScreen(),
        MenuScreen.routeName: (context) => MenuScreen(),
      },
    );
  }
}
