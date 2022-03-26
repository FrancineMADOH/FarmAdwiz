import 'package:flutter/material.dart';
import 'package:flutterd/screen/widgets/style/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';


class CustomAppBar extends StatelessWidget {
  final SizingInformation sizingInformation;

  const CustomAppBar({Key? key, required this.sizingInformation}) : super(key: key);
  @override
Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      height: sizingInformation.screenSize.height * 0.10,
      padding: EdgeInsets.only(top: 20,left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 30,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child:Image.asset("assets/1.png")) ,
          ),
          Container(
            height: 35,
            width: sizingInformation.screenSize.width/1.50,
            decoration: BoxDecoration(
              color: Colors.white30,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.qr_code),
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.asset("assets/icons/message_icon_1.png",color: Colors.white),
            ),
          ),

        ],
      ),
    );
}
}