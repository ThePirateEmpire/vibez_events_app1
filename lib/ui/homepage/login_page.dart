import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:vibez_events_app/ui/homepage/home_page.dart';
import 'package:vibez_events_app/ui/homepage/register_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  late String email;
  late String password;
  bool ShowSpinner = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ModalProgressHUD(
          inAsyncCall: ShowSpinner,
          child: Form(
            key: _globalKey,
            child: Padding(
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
                        EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Email is Empty";
                      },
                      onChanged: (value) {
                        email = value;
                      },
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
                        EdgeInsets.only(left: 16, right: 16, top: 1, bottom: 1),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) return "Password is Empty";
                      },
                      onChanged: (value) {
                        password = value;
                      },
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
                    margin: EdgeInsets.only(top: 1, bottom: 1),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    width: 250,
                    child: FlatButton(
                      child: Text('Login',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      onPressed: () async {
                        if (_globalKey.currentState!.validate())
                          _globalKey.currentState!.save();
                        setState(() {
                          ShowSpinner = true;
                        });
                        try {
                          final User = await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if (User != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                            setState(() {
                              ShowSpinner = false;
                            });
                          }
                        } catch (e) {
                          print(e);
                          setState(() {
                            ShowSpinner = false;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1, bottom: 1),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuthPage()));
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
        ),
      ),
    );
  }
}
