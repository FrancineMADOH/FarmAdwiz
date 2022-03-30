import 'package:flutter/material.dart';
import 'package:flutterd/screen/pages/mobile/sign_in.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isloggedin = true;

  @override
  Widget build(BuildContext context) {
    return isloggedin
        ? Container(
            child: Column(children: []),
          )
        : SignIn();
  }
}
