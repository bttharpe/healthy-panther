// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthy_panther_app/download.dart';
import 'package:healthy_panther_app/homescreen.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 29, 55, 204),
                image: DecorationImage(
                    image: AssetImage('images/gsuLogo.png'),
                    fit: BoxFit.scaleDown)),
            child: null,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Stress Level Report'),
            onTap: () {
              Navigator.pop(context);
              // change page to connect page, then close drawer
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.save_alt_outlined),
            title: Text('Download Wearable Data'),
            onTap: () {
              Navigator.pop(context);
              // change page to donate page, then close drawer
              // Navigator.pushReplacementNamed(context, Routes.donate);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => DownloadPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.local_library),
            title: Text('About this project'),
            onTap: () {
              Navigator.pop(context);
              // change page to resources page, then close drawer
              //   Navigator.pushReplacementNamed(context, Routes.resources);
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined),
            title: Text('Privacy Policy'),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacementNamed(context, Routes.donate);
              // change page to contact us, then close drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacementNamed(context, Routes.donate);
              // change page to contact us, then close drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
              // Navigator.pushReplacementNamed(context, Routes.donate);
              // change page to contact us, then close drawer
            },
          ),
        ],
      ),
    );
  }
}
