import 'package:flutter/material.dart';
import 'package:puc_fit/login03.dart';

class Sign02 extends StatelessWidget {
  const Sign02({super.key});

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
              image: AssetImage("assets/02-Sign Screen.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 75,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 49.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login03()),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
