import 'package:flutter/material.dart';
import 'package:puc_fit/gender_male.dart';
import 'package:puc_fit/gender_female.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

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
              image: AssetImage("assets/sexo/sexo.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 74,
          top: MediaQuery.of(context).size.height / 2 - 103,
          child: SizedBox(
            width: 150.0,
            height: 150.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GenderScreenMale()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 74,
          bottom: MediaQuery.of(context).size.height / 2 - 227,
          child: SizedBox(
            width: 150.0,
            height: 150.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GenderScreenFemale()),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}
