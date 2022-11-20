import 'package:flutter/material.dart';
import 'futScreen.dart';
import 'musculacao1.dart';
import 'jiu_jitsu.dart';
import 'musculacao2.dart';

class ModalidadesScreen extends StatelessWidget {
  const ModalidadesScreen({super.key});

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
              image: AssetImage("assets/modalidades/_modalidades.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 183,
          top: 155,
          child: SizedBox(
            width: 118.0,
            height: 128.0,
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
          left: MediaQuery.of(context).size.width / 2 - 49,
          top: MediaQuery.of(context).size.height / 2 - 96,
          child: SizedBox(
            width: 118.0,
            height: 128.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FutScreen()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 2 - 183,
          bottom: 76,
          child: SizedBox(
            width: 118.0,
            height: 128.0,
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
