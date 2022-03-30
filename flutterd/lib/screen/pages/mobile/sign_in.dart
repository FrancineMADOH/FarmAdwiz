import 'package:flutter/material.dart';
import 'package:flutterd/constants/colors.dart';
import 'package:flutterd/constants/top_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? name;
  String? profile;
  String? phone;
  String? email;
  String? localization;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customlightgreen,
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopScreen(),
              Form(
                  child: Column(
                children: [],
              ))
            ],
          )),
    );
  }
}
