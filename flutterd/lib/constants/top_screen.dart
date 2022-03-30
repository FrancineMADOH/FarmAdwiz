import 'package:flutter/material.dart';
import 'package:flutterd/constants/colors.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(120),
                bottomLeft: Radius.circular(120)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [customwhite, customwhite])),
        child: Column(children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/logo.jpg',
              width: 300,
              fit: BoxFit.contain,
            ),
          )
        ]));
  }
}
