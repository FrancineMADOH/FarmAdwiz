import 'package:farmadwiz/state/post_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomeScreens extends StatefulWidget {
  static const routName = '/home-screens';

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {

  bool _init = true;

  @override
  void didChangeDependencies() {
    if(_init){
      Provider.of<PostsState>(context,listen: false).getPostsData();
    }
    _init=false;
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FarmAdwiz"),),
    );
  }
}