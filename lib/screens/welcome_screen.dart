import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_auth/components/rounded_button.dart';
import 'package:riverpod_auth/screens/login_screen.dart';
import 'package:riverpod_auth/screens/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: "logo",
                  child: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 100.0,
                  ),
                ),
                Text(
                  "riverPod",
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            RoundedButton(
              buttonColor: Colors.black54,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              buttonText: "Log In",
            ),
            RoundedButton(
              buttonColor: Colors.black54,
              onPressed: () {
                Navigator.pushNamed(context, SignupScreen.id);
              },
              buttonText: "Sign Up",
            )
          ],
        ),
      ),
    );
  }
}
