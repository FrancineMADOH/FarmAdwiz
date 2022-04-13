import 'package:farmadwiz/constants/colors.dart';
import 'package:farmadwiz/partials/top_screen.dart';
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
        // decoration: BoxDecoration(color: customGreen),
        child: Column(
          children: [
            TopScreen(),
            SizedBox(height: 10, width: 0),
            Center(
                child: Text('Connexion',
                    style: TextStyle(
                        color: customwhite,
                        fontSize: 17,
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
                        onChanged: (value) {},
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
                    onTap: () => {},
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
