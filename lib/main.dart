import 'package:flutter/material.dart';
import './screens/screens.dart';
import 'colors/colors.dart';

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
          fontFamily: "Poppins", primaryColor: primaryColor
      ),
      home: NavScreen(),
      routes: {
        Home.routeName: (context) => Home(),
      },
    );
  }
}
