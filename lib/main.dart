import 'package:flutter/material.dart';
import 'package:puc_fit/login03.dart';
import 'package:puc_fit/mainScreen.dart';
import 'package:puc_fit/sign02.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:puc_fit/splash02.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    /* Replace with actual values
      options: const FirebaseOptions(
    apiKey: "AIzaSyAvOHnn7SjYnISkjzJl9-WYbLUwd_naNXk",
    appId: "1:117122046004:android:d154981b5c259ab8195261",
    messagingSenderId: "117122046004",
    projectId: "117122046004",*/
  );
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
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
        Align(
          alignment: Alignment.bottomLeft,
          child: TextButton(
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
