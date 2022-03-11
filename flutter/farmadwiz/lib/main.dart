import 'package:farmadwiz/screens/home_screens.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreens(),
      routes: {
        HomeScreens.routName:(ctx)=>HomeScreens(),
      },
    );
  }
}
