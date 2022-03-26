import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RightSideWidget extends StatelessWidget {
  final SizingInformation sizingInformation;

  const RightSideWidget({Key? key, required this.sizingInformation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 100,
      color: Colors.grey,
    );
  }
}