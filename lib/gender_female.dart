import 'package:flutter/material.dart';
import 'package:puc_fit/gender_male.dart';
import 'package:puc_fit/main.dart';
import 'package:puc_fit/focus_empty.dart';

class GenderScreenFemale extends StatelessWidget {
  const GenderScreenFemale({super.key});

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
              image: AssetImage("assets/sexo/sexo_f.png"),
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
          left: 15,
          bottom: 66,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 55.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationFocus()),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
