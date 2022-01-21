import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibez_events_app/ui/homepage/home_page.dart';
import 'package:vibez_events_app/ui/homepage/register_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/event_images/vibez.png'),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 3),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 3, bottom: 3),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 18),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
                width: 250,
                child: FlatButton(
                  child: Text('Login',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, bottom: 3),
                decoration: BoxDecoration(
                  // color: Colors.green,
                  border: Border.all(color: Colors.amber),
                  // shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: 250,
                child: FlatButton(
                  child: Text('Register Now',
                      style: TextStyle(fontSize: 20, color: Colors.amber)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AuthPage()));
                  },
                ),
              ),
              SizedBox(
                height: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
