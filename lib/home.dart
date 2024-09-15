import 'package:flutter/material.dart';
import 'package:tarea_1/drink.dart';

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
            'name',
            width: 30,
            height: 30,
          ), //images/location.png
          Spacer(),
          Image.asset(
            'name',
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
          '',
          width: 50,
          height: 50,
        ) //imagen de logo
        );
  }

  Widget buildPager(Size size) {
    return Container(child: PageView.builder(itemBuilder: null));

    List<Drink> getDrinks() {
      List<Drink> list = [];
      list.add(Drink(name, conName, backgroundImage, imageTop, imageSmall,
          imageBlur, cupImage, description, mBrownLight, mBrown));

      List<Drink> getDrinks() {
      List<Drink> List = [];
      list.add(Drink(name, conName, backgroundImage, imageTop, imageSmall,
          imageBlur, cupImage, description, greenLight, greenDark));

      List<Drink> getDrinks() {
      List<Drink> List = [];
      list.add(Drink(name, conName, backgroundImage, imageTop, imageSmall,
          imageBlur, cupImage, description, lightColor, darkColor));
      }

    }
  }
}
