import 'package:flutter/material.dart';
import 'package:puc_fit/main.dart';
import 'package:puc_fit/profileScreen.dart';
import 'package:puc_fit/splash02.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUC Fit',
      theme:
          ThemeData(primarySwatch: Colors.orange, canvasColor: Colors.orange),
      home: const MyHomePage(title: 'PUC Fit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/09-Profile-Screen-Musc.jpg"),
                    fit: BoxFit.fill)))
      ]),
    );
  }
}
