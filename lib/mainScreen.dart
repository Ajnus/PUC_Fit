import 'package:flutter/material.dart';
import 'package:puc_fit/main.dart';
import 'package:puc_fit/profileScreen.dart';
import 'package:puc_fit/homeScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUC Fit',
      theme:
          ThemeData(primarySwatch: Colors.orange, canvasColor: Colors.orange),
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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _pageList = <Widget>[
    HomeScreen(),
    //NotificationScreen(),
    ProfileScreen(),
    //MessageScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mensagens',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              'Home'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Buscar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Pesquise aqui a atividade desejada')));
              },
            ),
          ]),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.orange),
          child: Stack(children: const [
            Positioned(
                left: 85,
                top: 0,
                child:
                    CircleAvatar(backgroundColor: Colors.white, radius: 55.0)),
            Positioned(
                left: 95,
                top: 27,
                child: Text(
                    style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 50),
                    'N U')),
            Positioned(
                left: 95,
                top: 115,
                child: Text(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    'Novo Usuário')),
          ]),
        ),
        const Divider(
          height: 20,
          thickness: 1,
          indent: 0,
          endIndent: 0,
          color: Colors.white,
        ),
        Positioned(
          left: 45,
          top: 115,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Perfil'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Sobre'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Exercícios'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 135,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Eventos'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Mais'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
        )
        /*Container(
              color: Colors.white,
              child: const ListTile(title: Text('Perfil'))),
          Container(
              color: Colors.white, child: const ListTile(title: Text('Sobre'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Exercícios'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Preços'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Contato'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Exercícios'))),*/
      ])),
    );
  }
}
