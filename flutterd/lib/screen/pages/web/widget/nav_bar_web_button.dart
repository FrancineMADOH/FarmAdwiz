import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_builder/responsive_builder.dart';

Widget navBarWebButton ({SizingInformation? sizingInformation,String? iconImage, String? name}){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: sizingInformation!.localWidgetSize.width * 0.01),
    child: Column(
      children: [
        Container(
          width: 30,
          height: 30,
          child: Image.asset(iconImage!,color: Colors.white,),
        ),
        Text(name!,style: TextStyle(fontSize: 12,color: Colors.white),)
      ],
    ),

  );
}