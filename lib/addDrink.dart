import 'package:flutter/material.dart';

class AddDrink extends StatelessWidget {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final imageController = TextEditingController();
  final Function addDrinkFunction;
  AddDrink(this.addDrinkFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Drink Name: ',
            ),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Drink Price: ',
            ),
            controller: priceController,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add Image: ',
            ),
            controller: imageController,
          ),
          RaisedButton(
            child: Text("Add"),
            onPressed: () {
              addDrinkFunction(nameController.text, double.parse(priceController.text), imageController.text);
            },
          )
        ],
      ),
    );
  }
}
