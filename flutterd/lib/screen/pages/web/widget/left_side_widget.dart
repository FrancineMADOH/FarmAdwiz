import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LeftSideWidget extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftSideWidget({Key? key, required this.sizingInformation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 221,
      height: 100,
      color: Colors.orangeAccent,
      child: Column(
        children: [
          _headerWidget(),
        ],
      ),
    );
  }
  Widget _headerWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0.5,0.5)
          )
        ]
      ),


      child: Stack(
        children: [
          Container(
            height: 65,
            decoration: BoxDecoration(
              color:Colors.red
            ),
            child: Image.asset('assets/profile.jpg'),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 70,
              height: 70,
              child: Image.asset('assets/profile.jpg'),
            ),
          ),
        ],
      ) ,
    );
  }
}