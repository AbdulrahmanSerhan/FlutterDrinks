import 'package:flutter/material.dart';
import 'drinks.dart';

class Drinklist extends StatefulWidget {
  _DrinklistState createState() => _DrinklistState();
  final List<Drink> drinks;
  Drinklist(this.drinks);
}

class _DrinklistState extends State<Drinklist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: GridView.builder(
          itemCount: this.widget.drinks.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/DrinkDetail",
                  arguments: this.widget.drinks[index],
                );
              },
              child: Container(
                color: Colors.green,
                child: Card(
                  color: Colors.green,
                  child: Column(
                    children: [
                      Image.network(
                        this.widget.drinks[index].imgUrl,
                        width: 120,
                        height: 120,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            this.widget.drinks[index].drinkname,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${this.widget.drinks[index].price}KD",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
