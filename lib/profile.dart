import 'package:flutter/material.dart';

void main() => runApp(
    Profile()
);


class Profile extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
  _profileState createState() => _profileState();
}

class _profileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.brown,
          child: Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Stack(
                alignment: Alignment(0,-.4),
                children: <Widget>[
                  Padding(
                    padding:
                    EdgeInsets.only(top: 400 / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 100 /2,),

                              Text('Cardi B', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 34.0, color: Colors.green),),
                              Text('Atlanta, Georgia', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.redAccent),),

                              SizedBox(
                                height: 30.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text('SDG', style: TextStyle( fontSize: 20.0,  color: Colors.black54,),),
                                        Text('SGS', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Position', style: TextStyle( fontSize: 20.0,  color: Colors.black54),),
                                        Text('Full Time', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text('Title', style: TextStyle( fontSize: 20.0,  color: Colors.black54),),
                                        Text('CEO', style: TextStyle( fontSize: 34.0, color: Colors.black87, fontFamily: ''),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    ),
                  ),



                  ///Image Avatar
                  Container(
                    padding: EdgeInsets.fromLTRB(20,20,70,120),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Container(
                          child: Icon(Icons.person, size: 90,), /// replace your image with the Icon
                        ),
                      ),
                    ),
                  ),





                  ///Image Avatar
                  Container(
                    padding: EdgeInsets.fromLTRB(20,20,70,120),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Center(
                        child: Container(
                          child: Icon(Icons.person, size: 90,), /// replace your image with the Icon
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
  }
}
