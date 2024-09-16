import 'package:flutter/material.dart';
import 'package:tarea_1/drink.dart';
import 'package:tarea_1/drinkCard.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[buildToolbar(), buildLogo(size), buildPager(size)],
      )),
    );
  }

  Widget buildToolbar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Image.asset(
            'images/menu.png',
            width: 30,
            height: 30,
          ), //images/location.png
          Spacer(),
          Image.asset(
            'images/menu.png',
            width: 30,
            height: 30,
          ), //images/drawer.png
          SizedBox(
            width: 20,
          ), //
        ],
      ),
    );
  }

  Widget buildLogo(Size size) {
    return Positioned(
        top: 10,
        right: size.width / 2 - 25,
        child: Image.asset(
          'images/titulo.png',
          width: 50,
          height: 50,
        ) //imagen de logo
        );
  }

  Widget buildPager(Size size) {
    return Container(
        margin: EdgeInsets.only(top: 70),
        height: size.height,
        child: PageView.builder(
            itemCount: getDrinks().length,
            itemBuilder: (context, index) => Drinkcard(getDrinks()[index])));
  }

  List<Drink> getDrinks() {
    List<Drink> list = [];
    list.add(Drink('Shinji', 'Ikari', 'city.jpg', '', '', 'eva01logo.jpg',
        'shinji.png', 'description Shinji', mBrownLight, mBrown));

    list.add(Drink('Azuka', 'lange', 'city.jpg', '', '', 'eva02logo.jpg',
        'azuka.png', 'descripción azuka', greenLight, greenDark));

    list.add(Drink('Rei', 'Ayanami', 'city.jpg', '', '', 'eva00logo.png',
        'rei.png', 'descripción rei', lightColor, darkColor));
  }
}
