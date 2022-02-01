import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vibez_events_app/ui/homepage/help_page.dart';
import 'package:vibez_events_app/ui/homepage/home_page.dart';
import 'package:vibez_events_app/ui/homepage/login_page.dart';

class mydrawer extends StatefulWidget {
  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  final _firestore = FirebaseFirestore.instance;
  String yname = "";
  String yphone = "";

  void getName() async {
    var docSnapshot = await FirebaseFirestore.instance
        .collection('UserName')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      yname = data?['Name']; // <-- The value you want to retrieve.
      yphone = data?['Phone']; // <-- The value you want to retrieve.
      // Call setState if needed.
      setState(() {
        yphone;
        yname;
      });
    }
  }

  @override
  void initState() {
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(yname),
            accountEmail: Text(yphone),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(color: Colors.amber),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.add_ic_call),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
          ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.door_back_door),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
