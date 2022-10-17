import 'package:flutter/material.dart';
import 'package:puc_fit/main.dart';
import 'package:puc_fit/profileScreen.dart';
import 'package:puc_fit/splash02.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/07-Home-Screen.jpg"),
                    fit: BoxFit.fill)))
      ]),
    );
  }
}
