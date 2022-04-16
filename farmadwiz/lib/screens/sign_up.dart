import 'package:farmadwiz/constants/back_to_login.dart';
import 'package:farmadwiz/constants/colors.dart';
import 'package:farmadwiz/constants/user_profile.dart';
import 'package:farmadwiz/constants/using_cond..dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  bool terms = false;
  bool with_phone = true;
  bool has_not_signed_up = true;

  @override
  void initState() {
    super.initState();
    with_phone = true;
  }

  Widget build(BuildContext context) {
    return has_not_signed_up
        ? Scaffold(
            backgroundColor: customGreen,
            body: Container(
              padding: EdgeInsets.fromLTRB(0, 20.0, 0, 10.0),
              child: ListView(
                children: [
                  Center(
                    child: Text('INSCRIPTION',
                        style: TextStyle(
                            color: customLightGreen,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.7,
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                        key: _formkey,
                        child: Column(
                          children: <Widget>[
                            !with_phone
                                ? TextFormField(
                                    style: TextStyle(color: customwhite),
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: customwhite, width: 2.0),
                                        ),
                                        labelStyle:
                                            TextStyle(color: customwhite),
                                        fillColor: customGrey,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: customwhite)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(2.0)),
                                        contentPadding: EdgeInsets.all(5.0),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: customwhite,
                                        ),
                                        labelText: 'Numéro de Téléphone',
                                        hintStyle:
                                            TextStyle(color: customwhite),
                                        hintText:
                                            'Entrez votre Numéro Téléphone'),
                                  )
                                : TextFormField(
                                    style: TextStyle(color: customwhite),
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: customwhite, width: 2.0),
                                        ),
                                        labelStyle:
                                            TextStyle(color: customwhite),
                                        fillColor: customGrey,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 2.0,
                                                color: customwhite)),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(2.0)),
                                        contentPadding: EdgeInsets.all(5.0),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: customwhite,
                                        ),
                                        labelText: 'Adresse Email',
                                        hintStyle:
                                            TextStyle(color: customwhite),
                                        hintText: 'Entrez votre adresse Email'),
                                  ),
                            SizedBox(
                              height: 20.0,
                            ),
                            DropdownButtonFormField(
                                // TODO: add some validation on the field

                                //focusColor: customwhite,
                                hint: Text('Sélectionnez votre profil',
                                    style: TextStyle(
                                      color: customwhite,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontSize: 14.0,
                                    )),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: customwhite,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: customwhite, width: 2.0)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: customwhite, width: 1.0))),
                                onChanged: (value) {},
                                items: signup_profile_list
                                    .map((e) => DropdownMenuItem(
                                        child: Text(
                                          e.text,
                                          style: TextStyle(
                                              color: customlightgreen),
                                        ),
                                        value: e.value))
                                    .toList()),
                            SizedBox(
                              height: 20.0,
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
                                      borderSide: BorderSide(
                                          width: 2.0, color: customwhite)),
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
                            SizedBox(height: 20.0),
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
                                      borderSide: BorderSide(
                                          width: 2.0, color: customwhite)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0)),
                                  contentPadding: EdgeInsets.all(5.0),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: customwhite,
                                  ),
                                  labelText: 'Confirmez le mot de passe',
                                  hintStyle: TextStyle(color: customwhite),
                                  hintText: 'Confirmez le mot de passe'),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    side: BorderSide(
                                        color: customwhite, width: 2.0),
                                    activeColor: customwhite,
                                    checkColor: customwhite,
                                    value: this.terms,
                                    onChanged: (bool) {}),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                    'J\'acceptes les conditions d\'utilisation',
                                    style: TextStyle(
                                      color: customwhite,
                                      letterSpacing: 0.7,
                                      fontSize: 12.0,
                                    )),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    primary: customwhite,
                                    padding: EdgeInsets.all(10.0),
                                    textStyle: TextStyle(
                                        letterSpacing: 0.7,
                                        fontSize: 15,
                                        color: customGreen,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  setState(() {
                                    has_not_signed_up = !has_not_signed_up;
                                  });
                                },
                                icon: Icon(
                                  Icons.login_rounded,
                                  color: customGreen,
                                ),
                                label: Text(
                                  'S\'inscrire',
                                  style: TextStyle(color: customGreen),
                                ))
                          ],
                        )),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          with_phone = !with_phone;
                        });
                      },
                      child: Text('Se connecter avec l\'adresse mail',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: customwhite,
                              fontSize: 17,
                              fontStyle: FontStyle.italic)),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: InkWell(
                      onTap: (() {}),
                      child: Text('Retour a l\'ecran de connexion',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: customwhite,
                              fontSize: 17,
                              fontStyle: FontStyle.italic)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsingConditions()));
                      },
                      child: Text('Conditions d\'utilisation',
                          style: TextStyle(
                              color: customLightGreen,
                              letterSpacing: 0.7,
                              fontSize: 14.0,
                              decoration: TextDecoration.underline)),
                    ),
                  )
                ],
              ),
            ),
          )
        : BackToLoginPage();
  }
}
