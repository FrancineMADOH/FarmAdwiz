import 'package:farmadwiz/constants/colors.dart';
import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.white])),
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo.jpg',
              width: 300,
              fit: BoxFit.fill,
            ),
          )
        ]));
  }
}
