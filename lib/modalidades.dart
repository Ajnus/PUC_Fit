import 'package:flutter/material.dart';

import 'musculacao1.dart';

import 'jiu_jitsu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              image: AssetImage("assets/_modalidades.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 179,
          top: MediaQuery.of(context).size.height / 2 - 225,
          child: SizedBox(
            width: 120.0,
            height: 120.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutsScreen()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 180,
          top: MediaQuery.of(context).size.height / 2 - -165,
          child: SizedBox(
            width: 115.0,
            height: 115.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JitsuScreen()),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
