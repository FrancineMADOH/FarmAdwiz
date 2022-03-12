import 'package:farmadwiz/screens/home_screens.dart';
import 'package:farmadwiz/state/post_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => PostsState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.orange,
        ),
        home: HomeScreens(),
        routes: {
          HomeScreens.routName:(ctx)=>HomeScreens(),
        },
      ),
    );
  }
}
