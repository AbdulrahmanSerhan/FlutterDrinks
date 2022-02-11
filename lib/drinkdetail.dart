import 'package:flutter/material.dart';
import 'drinks.dart';

class DrinkDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Drink;

    return Scaffold(
      appBar: AppBar(
        title: Text(arg.drinkname),
      ),
      body: Text("blaah"),
    );
  }
}
