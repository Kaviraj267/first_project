import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        centerTitle: true,
        title: const Text(
          'ELICS',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      drawer: const Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
              accountName: Text('KAVIRAJ'),
              accountEmail: Text('skaviraj236@gmail.com')),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('More info'),
            leading: Icon(Icons.more),
          ),
        ] //userAccount
            ), //children
      ),
    );
  }
}
