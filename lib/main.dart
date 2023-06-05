// ignore_for_file: prefer_const_constructors

import 'package:cudo_ride/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter without calling setState()

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CUDO Ride',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          // ignore: prefer_const_constructors
          headline1: TextStyle(
            fontSize: 90,
            fontWeight: FontWeight.w200,
          ),
          headline2: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C1A30),
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 12,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
        ),
      ),
      home: Splash(),
    );
  }
}
