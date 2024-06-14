import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String id = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Text("You're authenticated"),
        ],
      ),
    );
  }
}
