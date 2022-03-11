import 'package:flutter/material.dart';


class HomeScreens extends StatefulWidget {
  static const routName = '/home-screens';

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {

  bool init = true;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FarmAdwiz"),),
    );
  }
}