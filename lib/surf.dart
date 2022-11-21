import 'package:flutter/material.dart';

import 'musculacao2.dart';

class SurfScreen extends StatelessWidget {
  const SurfScreen({super.key});

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
              image: AssetImage("assets/modalidades/surf.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            left: 26,
            top: 250,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 25.0,
              child: IconButton(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(7),
                  iconSize: 40,
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkoutScreen()),
                    );
                  }),
            )),
        Positioned(
          left: 17,
          top: MediaQuery.of(context).size.height / 2 - 74,
          child: SizedBox(
            width: 390.0,
            height: 75.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 17,
          top: MediaQuery.of(context).size.height / 2 + 30,
          child: SizedBox(
            width: 390.0,
            height: 75.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()),
                );
              },
            ),
          ),
        ),
        Positioned(
          left: 17,
          bottom: 190,
          child: SizedBox(
            width: 390.0,
            height: 75.0,
            child: TextButton(
              child: const Text(''),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
