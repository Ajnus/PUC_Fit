import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' hide Image;
import 'package:image_picker/image_picker.dart';
import 'package:puc_fit/futScreen.dart';
import 'package:puc_fit/messageScreen.dart';
import 'package:puc_fit/modalidades.dart';
import 'package:puc_fit/profileScreen.dart';
import 'package:puc_fit/profiles.dart';
import 'package:puc_fit/homeScreen.dart';
import 'package:puc_fit/notificationScreen.dart';
import 'dart:io';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUC Fit',
      theme:
          ThemeData(primarySwatch: Colors.orange, canvasColor: Colors.orange),
      home: MyHomePage(title: 'PUC Fit', appBarText: 'void'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title, required this.appBarText});
  final String appBarText;
  final String title;
  //MyHomePage({Key? key, required this.appBarText}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*File? _image;
  PickedFile _pickedFile;
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _pickImage() async {
    if (_pickedFile != null) {
      setState(() {
        _image = File(_pickedFile.path);
      });
    }
  }*/

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _pageList = <Widget>[
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
    MessageScreen(),
    ModalidadesScreen(),
    FutScreen()
  ];
  String imageUrl = " ";

  File _resizeImage(String filePath) {
    final image = decodeImage(File(filePath).readAsBytesSync());

    if (image == null) return File(filePath);

    if (image.width > 50) {
      final resizedImage = copyResize(image, width: 110, height: 110);
      File(filePath).writeAsBytesSync(encodePng(resizedImage));
    }

    return File(filePath);
  }

  void _onItemTapped(int index) {
    setState(() {
      print(index);
      _selectedIndex = index;
    });
  }

  void pickUploadImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      //maxWidth: 10240,
      //maxHeight: 10240,
      imageQuality: 25,
    );

    Reference ref = FirebaseStorage.instance.ref().child("profilepic.jpg");

    await ref.putFile(_resizeImage(image!.path));
    ref.getDownloadURL().then((value) {
      print(value);
      setState(() {
        imageUrl = value;
      });
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
            label: 'Notifica????es',
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
          title: Text(
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              _pageList[_selectedIndex].toString()),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Buscar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Pesquise aqui a atividade desejada')));
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),
          ]),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.orange),
          child: Stack(children: <Widget>[
            Positioned(
              left: 85,
              top: 0,
              child: imageUrl == " "
                  ? CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 55.0,
                      child: IconButton(
                          color: Colors.black,
                          padding: const EdgeInsets.all(20),
                          iconSize: 60,
                          icon: const Icon(Icons.person),
                          onPressed: () {
                            pickUploadImage();
                          }),
                    )
                  : CircleAvatar(
                      radius: 55.0,
                      backgroundImage: NetworkImage(imageUrl),
                      child: IconButton(
                          icon: const Icon(null),
                          onPressed: () {
                            pickUploadImage();
                          }),
                    ),
            ),
            /*const Positioned(
                left: 95,
                top: 27,
                child: Text(
                    style: TextStyle(
                        color: Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 50),
                    'N U')),*/
            const Positioned(
                left: 95,
                top: 115,
                child: Text(
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    'Novo Usu??rio')),
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
                MaterialPageRoute(builder: (context) => const ProfilesScreen()),
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
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Modalidades'),
            onPressed: () {
              Navigator.push(
                //         currentIndex: _selectedIndex, onItemtapped(?)
                context,
                MaterialPageRoute(
                    builder: (context) => const ModalidadesScreen()),
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
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Rede Social'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
              );
            },
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: TextButton(
            child: const Text(''),
            onPressed: () {},
          ),
        ),
        Positioned(
          left: 45,
          top: 125,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: const Text(textAlign: TextAlign.left, 'Ajuda'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
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
              child: const ListTile(title: Text('Exerc??cios'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Pre??os'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Contato'))),
          Container(
              color: Colors.white,
              child: const ListTile(title: Text('Exerc??cios'))),*/
      ])),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Muscula????o',
    'Pedalada',
    'Caminhada',
    'Corrida',
    'Surfe'
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null));

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        )
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(query,
            style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold)),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
      ;
    }).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {},
        );
      },
    );
  }
}
