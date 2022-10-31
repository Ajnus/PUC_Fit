import 'package:flutter/material.dart';
import 'package:puc_fit/focus_1.dart';
import 'package:puc_fit/focus_2.dart';
import 'package:puc_fit/focus_3.dart';
import 'package:puc_fit/focus_4.dart';
import 'package:puc_fit/mainScreen.dart';
import 'package:puc_fit/main.dart';

class RegistrationFocus_3 extends StatelessWidget {
  const RegistrationFocus_3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUC Fit',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
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
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/foco/melhor_nutricao.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: MediaQuery.of(context).size.height / 2 - 50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationFocus_1()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 15,
          top: MediaQuery.of(context).size.height / 2 + 20,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationFocus_2()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 250,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationFocus_3()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 183,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationFocus_4()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 45,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
