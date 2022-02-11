import 'package:flutter/material.dart';
import 'Home.dart';
import 'aboutUs.dart';
import 'drinkdetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/aboutUs": (context) => AboutUs(),
        "/DrinkDetail": (context) => DrinkDetail(),
      },
    );
  }
}
