import 'package:flutter/material.dart';
import 'package:flutterd/screen/pages/mobile/mobile_screen.dart';
import 'package:flutterd/screen/pages/tablet/tablet_screen.dart';
import 'package:flutterd/screen/pages/web/web_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        if (sizingInformation.isDesktop) {
          return WebScreen();
        }
        if (sizingInformation.isTablet) {
          return TabletScreen();
        }
        return MobileScreen();
      },
    );
  }
}
