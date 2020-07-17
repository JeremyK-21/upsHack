import 'package:flutter/material.dart';
import 'package:testing_app/map.dart';
import 'package:testing_app/home.dart';
import 'package:testing_app/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pages=[MyApp(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(,
          color: Colors.white,
        ),
        title: Text("Booking",
          style: TextStyle(
            color: Colors.white,
          ),),
        actions: <Widget>[
          IconButton(icon: Icon(
              FontAwesomeIcons.luggageCart, color: Colors.white),
              onPressed: () {
                //
              }),
        ],
      ),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}