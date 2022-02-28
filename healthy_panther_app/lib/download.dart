// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:healthy_panther_app/navigation_drawer.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Download Data'),
          backgroundColor: Color.fromARGB(255, 29, 55, 204)),
      drawer: NavigationDrawer(),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20, top: 70),
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 54,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 31, 70, 245),
            Color.fromARGB(255, 37, 96, 204)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xffEEEEEE)),
          ],
        ),
        child: Text(
          "Download Wearable Data",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
