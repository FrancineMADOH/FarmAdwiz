import 'package:flutter/material.dart';
import 'package:flutterd/screen/pages/mobile/widget/common.dart';
import 'package:flutterd/screen/pages/mobile/widget/custom_appBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (BuildContext context, SizingInformation sizingInformation) {
          return Scaffold(
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: sizingInformation.screenSize.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white54,
                border: Border(top: BorderSide(color: Colors.black26,width: 0.80)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleNavBarButton(name: "home",icon: FontAwesomeIcons.home,),
                  SingleNavBarButton(name: "My Network",icon: FontAwesomeIcons.userFriends,),
                  SingleNavBarButton(name: "Post",icon: FontAwesomeIcons.plusCircle,),
                  SingleNavBarButton(name: "Information",icon: FontAwesomeIcons.briefcase,),
                  SingleNavBarButton(name: "Notification",icon: FontAwesomeIcons.solidBell,),
                ],
              )
            ),
            body: Column(
              children: [
                CustomAppBar(sizingInformation: sizingInformation,),
              ],
            ),
          );
        }
    );
  }
}