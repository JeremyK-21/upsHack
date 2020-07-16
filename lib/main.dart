import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:testing_app/home.dart';

void main() {
  runApp(MyApp());
} //material app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'HomePage':(context)=>HomePage()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  void startTimer(){
    Timer(Duration(seconds: 4),() {
      Navigator.of(context).pushReplacementNamed('HomePage');
    }); // Timer
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text('UPS Virtual Assistant'),
          ),
        ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Image.asset('assets/images/UPS.png', width: MediaQuery.of(context).size.width*.5),),
      );
  }
}