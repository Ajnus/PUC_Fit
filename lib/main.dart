import 'package:flutter/material.dart';
import 'package:puc_fit/sign02.dart';
import 'package:puc_fit/splash02.dart';

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
              image: AssetImage("assets/01-Splash-Screen.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.transparent),
            child: const Text(''),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Splash02()),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.transparent),
            child: const Text(''),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Sign02()),
              );
            },
          ),
        ),
      ],
    ));
  }
}
