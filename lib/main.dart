import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vibez_events_app/ui/homepage/home_page.dart';
import 'package:vibez_events_app/ui/homepage/login_page.dart';
import 'package:vibez_events_app/ui/homepage/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage': (context) => HomePage(),
        'Login': (context) => WelcomePage(),
        'Auth': (context) => AuthPage(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primarySwatch: Colors.amber,
      ),
      home: WelcomePage(),
    );
  }
}
