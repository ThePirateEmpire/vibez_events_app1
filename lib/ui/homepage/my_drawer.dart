import 'package:flutter/material.dart';
import 'package:vibez_events_app/ui/homepage/help_page.dart';
import 'package:vibez_events_app/ui/homepage/home_page.dart';
import 'package:vibez_events_app/ui/homepage/login_page.dart';

class mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("hamzah"),
            accountEmail: Text("alhumsi"),
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
