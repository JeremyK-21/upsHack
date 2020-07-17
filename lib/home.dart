import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing_app/main.dart';
import 'package:testing_app/map.dart';
import 'package:testing_app/profile.dart';
import 'package:testing_app/src/calender.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyApp(),
        MyDashBoard(),
        MyMap(),
        Profile(),
      ],
    );
  }
}



