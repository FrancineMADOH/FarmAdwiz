import 'package:farmadwiz/constants/colors.dart';
import 'package:farmadwiz/partials/top_screen.dart';
import 'package:farmadwiz/screens/sign_up.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customGreen,
      body: Container(
        child: ListView(
          children: [
            TopScreen(),
            SizedBox(height: 10, width: 0),
            Center(
                child: Text('Connexion',
                    style: TextStyle(
                        color: customwhite,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.7,
                        fontSize: 20,
                        fontStyle: FontStyle.italic))),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(color: customwhite),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: customwhite, width: 2.0),
                            ),
                            labelStyle: TextStyle(color: customwhite),
                            fillColor: customGrey,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2.0, color: customwhite)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                            contentPadding: EdgeInsets.all(5.0),
                            prefixIcon: Icon(
                              Icons.email,
                              color: customwhite,
                            ),
                            labelText: 'Adresse email / Numéro de Téléphone',
                            hintStyle: TextStyle(color: customwhite),
                            hintText: 'Entrez votre email/Téléphone'),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        //validator: (value){return ''},
                        style: TextStyle(color: customwhite),
                        onChanged: (value) {},
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: customwhite, width: 2.0),
                            ),
                            labelStyle: TextStyle(color: customwhite),
                            fillColor: customwhite,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2.0, color: customwhite)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                            contentPadding: EdgeInsets.all(5.0),
                            prefixIcon: Icon(
                              Icons.password,
                              color: customwhite,
                            ),
                            labelText: 'Mot de passe',
                            hintStyle: TextStyle(color: customwhite),
                            hintText: 'Entrez votre mot de passe'),
                      ),
                      SizedBox(height: 40.0),
                      ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              primary: customwhite,
                              padding: EdgeInsets.all(10.0),
                              textStyle: TextStyle(
                                  letterSpacing: 0.7,
                                  fontSize: 15,
                                  color: customGreen,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          icon: Icon(
                            Icons.login_rounded,
                            color: customGreen,
                          ),
                          label: Text(
                            'Se Connecter',
                            style: TextStyle(color: customGreen),
                          ))
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text('Vous n\'avez pas de compte ?',
                      style: TextStyle(
                          color: customwhite,
                          fontSize: 17,
                          fontStyle: FontStyle.italic)),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()))
                    },
                    child: Text('Inscrivez-vous',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: customwhite,
                            fontSize: 17,
                            fontStyle: FontStyle.italic)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
