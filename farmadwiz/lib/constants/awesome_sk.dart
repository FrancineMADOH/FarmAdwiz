import 'package:farmadwiz/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WelcomeSpinket extends StatelessWidget {
  const WelcomeSpinket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SpinKitPumpingHeart(
      color: customLightGreen,
      size: 100.0,
    ));
  }
}
