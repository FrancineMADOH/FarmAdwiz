import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenterWidget extends StatelessWidget{
  final SizingInformation sizingInformation;

  const CenterWidget({Key? key, required this.sizingInformation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 640,
      height: 500,
      color: Colors.blueGrey,
    );
  }
}