import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:interconnect_mobile_app/components/custom_button.dart';
import 'package:interconnect_mobile_app/components/custom_input.dart';
import 'package:interconnect_mobile_app/constants/theme_colors.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'main_page.dart';

class RegistrationPage extends StatefulWidget {
  static const routeName = "/registration";

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _auth = FirebaseAuth.instance;

  String email;
  String firstName;
  String lastName;
  String description;
  String passwordConfirm;
  String password;

  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showProgress,
      child: Scaffold(
        backgroundColor: ThemeColors.primary,
        body: Builder(builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    'Setup your personal profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                CustomInputField(
                  'First Name',
                  (value) {
                    firstName = value;
                  },
                  false, // obscure
                ),
                SizedBox(
                  height: 8.0,
                ),
                CustomInputField(
                  'Last Name',
                  (value) {
                    lastName = value;
                  },
                  false, // obscure
                ),
                SizedBox(
                  height: 8.0,
                ),
                CustomInputField(
                  'Description',
                  (value) {
                    description = value;
                  },
                  false, // obscure
                ),
                SizedBox(
                  height: 8.0,
                ),
                CustomInputField(
                  'Email',
                  (value) {
                    email = value;
                  },
                  false, // obscure
                ),
                SizedBox(
                  height: 8.0,
                ),
                CustomInputField(
                  'Password',
                  (value) {
                    password = value;
                  },
                  true, // obscure
                ),
                SizedBox(
                  height: 8.0,
                ),
                CustomInputField(
                  'Confirm Password',
                  (value) {
                    passwordConfirm = value;
                  },
                  true, // obscure
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    'By creating an account you agree our Terms of Service and Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: CustomButton(
                    label: 'CONTINUE',
                    color: ThemeColors.accent,
                    action: () async {
                      if (password == passwordConfirm) {
                        setState(() {
                          showProgress = true;
                        });

                        try {
                          final user =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (user != null) {
                            Navigator.pushNamed(context, MainPage.routeName);
                          }
                        } catch (e) {
                          print(e);
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        } finally {
                          setState(() {
                            showProgress = false;
                          });
                        }
                      } else {
                        Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Both passwords must match')));
                      }
                    },
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
