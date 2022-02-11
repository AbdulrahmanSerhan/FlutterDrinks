import 'package:flutter/material.dart';
import 'drinks.dart';
import 'drinklist.dart';
import 'addDrink.dart';

class MyHomePage extends StatefulWidget {
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<MyHomePage> {
  int index = 0;
  static const List<Drink> drinks = [];
  static const pages = [
    [
      HomeDrinkList.pagetitle,
      HomeDrinkList(drinks)
    ],
    [
      ShoppingList.pagetitle,
      ShoppingList()
    ],
  ];

  void fun(String name, double p, String imgUrl) {
    if (name != null) {
      return;
    }

    final newDrink = Drink(name, p, imgUrl);

    setState(() {
      drinks.add(newDrink);
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(pages[index][0] as String),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            tooltip: 'Information',
            onPressed: () {
              Navigator.pushNamed(context, "/aboutUs");
            },
          ), //IconButton
        ], //<Widget>[]
      ),
      body: pages[index][1] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(title: Text("item 1"), icon: Icon(Icons.stars)),
            BottomNavigationBarItem(
              title: Text("item 2"),
              icon: Icon(Icons.stop),
            ),
          ]),
      floatingActionButton: Container(
          child: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddDrink(fun);
            },
          );
        },
      )),
    );
  }
}

class HomeDrinkList extends StatefulWidget {
  static const pagetitle = "Drink list";

  final List<Drink> drinksList;
  const HomeDrinkList(this.drinksList);
  _HomeDrinkListState createState() => _HomeDrinkListState();
}

class _HomeDrinkListState extends State<HomeDrinkList> {
  // static const pagetitle = "Drink list";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(children: [
        Drinklist(this.widget.drinksList),
        FlatButton(
          child: Text("About Us"),
          onPressed: () {
            Navigator.pushNamed(context, "/aboutUs");
          },
        )
      ]),
    );
  }
}

class ShoppingList extends StatefulWidget {
  static const pagetitle = "Shopping list";
  const ShoppingList();
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  // static const pagetitle = "Shopping list";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Text("Hello world"),
    ]));
  }
}
