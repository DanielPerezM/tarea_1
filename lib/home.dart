import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[buildToolbar()],
      )),
    );
  }

  Widget buildToolbar() {
    return Row(
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
    );
  }
}
