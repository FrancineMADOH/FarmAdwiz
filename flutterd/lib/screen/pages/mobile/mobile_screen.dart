import 'package:flutter/material.dart';
import 'package:flutterd/screen/pages/mobile/widget/common.dart';
import 'package:flutterd/screen/pages/mobile/widget/custom_appBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileScreen extends StatefulWidget {
  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {

  int _currentNavIndex=0;

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
                  InkWell(
                    onTap: () {
                      setState((){
                        _currentNavIndex=0;
                     });
                    },
                    child: SingleNavBarButton(
                      name: "home",
                      icon: FontAwesomeIcons.home,
                      selectedButton: _currentNavIndex==0?true:false,
                    )),
                  InkWell(
                      onTap: () {
                        setState((){
                          _currentNavIndex=1;
                        });
                      },
                      child: SingleNavBarButton(
                        name: "My Network",
                        icon: FontAwesomeIcons.userFriends,
                        selectedButton: _currentNavIndex==1?true:false,
                      )),

                  InkWell(
                      onTap: () {
                        setState((){
                          _currentNavIndex=2;
                        });
                      },
                      child: SingleNavBarButton(
                        name: "Post",
                        icon: FontAwesomeIcons.plusCircle,
                        selectedButton: _currentNavIndex==2?true:false,
                      )),

                  InkWell(
                      onTap: () {
                        setState((){
                          _currentNavIndex=3;
                        });
                      },
                      child: SingleNavBarButton(
                        name: "Information",
                        icon: FontAwesomeIcons.briefcase,
                        selectedButton: _currentNavIndex==3?true:false,
                      )),

                  InkWell(
                      onTap: () {
                        setState((){
                          _currentNavIndex=4;
                        });
                      },
                      child: SingleNavBarButton(
                        name: "Notification",
                        icon: FontAwesomeIcons.solidBell,
                        selectedButton: _currentNavIndex==4?true:false,
                      )),
                ],
              )
            ),
            body: Column(
              children: [
                CustomAppBar(
                  sizingInformation: sizingInformation,
                ),
               // _listOfPostWidget(),
              ],
            ),
          );
        }
    );
  }
  //Widget _listOfPostWidget() {
    //return Expanded(child: List,)
  //}
}