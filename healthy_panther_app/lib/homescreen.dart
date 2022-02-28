import 'package:flutter/material.dart';
import 'package:healthy_panther_app/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Color.fromARGB(255, 29, 55, 204)),
      drawer: NavigationDrawer(),
      body: new Center(
        child: new Text('Stress Level Page'),
      ),
    );
  }
}
