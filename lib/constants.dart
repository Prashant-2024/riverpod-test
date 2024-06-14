import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: '',
  hintStyle: TextStyle(color: Colors.black12),
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black45, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black45, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
);
