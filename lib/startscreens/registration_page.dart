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
  String password;

  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showProgress,
      child: Scaffold(
        backgroundColor: ThemeColors.primary,
        body: Padding(
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
                height: 48.0,
              ),
              CustomInputField(
                'Enter your email',
                (value) {
                  email = value;
                },
                false, // obscure
              ),
              SizedBox(
                height: 8.0,
              ),
              CustomInputField(
                'Enter your password',
                (value) {
                  password = value;
                },
                true, // obscure
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: CustomButton(
                  label: 'Register',
                  color: ThemeColors.accent,
                  action: () async {
                    setState(() {
                      showProgress = true;
                    });

                    try {
                      final user = await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Navigator.pushNamed(context, MainPage.routeName);
                      }
                    } catch (e) {
                      print(e);
                    } finally {
                      setState(() {
                        showProgress = false;
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
