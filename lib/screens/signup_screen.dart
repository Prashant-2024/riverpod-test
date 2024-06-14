import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_auth/screens/home_screen.dart';
import 'package:riverpod_auth/screens/login_screen.dart';

import '../components/rounded_button.dart';
import '../constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const String id = 'signup';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late String email;
  late String password;

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hero(
                tag: "logo",
                child: Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 150.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecoration.copyWith(hintText: "E-Mail"),
                onChanged: (value) {
                  email = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(hintText: "Password"),
                onChanged: (value) {
                  password = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RoundedButton(
                buttonColor: Colors.black54,
                onPressed: () async {
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, LoginScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  }
                },
                buttonText: "SignUp",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
