import 'package:flutter/material.dart';
import 'package:tarea_1/drink.dart';

class DrinkCard extends StatelessWidget {
  Drink drink;
  DrinkCard(this.drink);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          buildTopText(),
          buildBackgroundImage(),
        ],
      ),
    );
  }
}

Widget buildTopText() {
  return Padding(
    padding: const EdgeInsets.only(top: 30.0),
    child: Row(children: <Widget>[
      SizedBox(
        width: 20,
      ),
      Text(
        drink.name,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: drink.lightColor),
      ),
      Text(
        drink.conName,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 50, color: drink.darkColor),
      ),
    ]),
  );
}

Widget buildBackgroundImage() {
  return Positioned(
      child: Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.asset(drink.backgroundImage),
    ),
  ));
}
