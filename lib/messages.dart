import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

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
              image: AssetImage("assets/messages/base.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 20,
            height: 48.0,
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Mensagem:',
                  hintText: 'Digite sua mensagem'),
            ),
          ),
        )
      ],
    ));
  }
}
