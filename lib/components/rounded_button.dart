import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.buttonColor,
      required this.onPressed,
      required this.buttonText});

  final Color buttonColor;
  final void Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(24.0),
        color: buttonColor,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 360.0,
          child: Text("${buttonText}"),
        ),
      ),
    );
  }
}
