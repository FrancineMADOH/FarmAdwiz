import 'package:farmadwiz/constants/awesome_sk.dart';
import 'package:farmadwiz/constants/colors.dart';
import 'package:farmadwiz/screens/login.dart';
import 'package:flutter/material.dart';

class BackToLoginPage extends StatelessWidget {
  const BackToLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customGreen,
      body: Container(
        padding: EdgeInsets.fromLTRB(40.0, 100.0, 40, 40.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 50.0),
            Center(
                child: Text('Merci de nous rejoindre  !',
                    style: TextStyle(
                        color: customwhite,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                        fontSize: 20,
                        fontStyle: FontStyle.italic))),
            SizedBox(height: 50.0),
            WelcomeSpinket(),
            SizedBox(height: 50.0),
            Center(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: customwhite,
                  padding: EdgeInsets.all(10.0),
                  textStyle: TextStyle(
                      letterSpacing: 0.7,
                      fontSize: 15,
                      color: customGreen,
                      fontWeight: FontWeight.bold)),
              child: Text(
                'Se connecter',
                style: TextStyle(
                  color: customGreen,
                  letterSpacing: 0.7,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ))
          ],
        ),
      ),
    );
  }
}
