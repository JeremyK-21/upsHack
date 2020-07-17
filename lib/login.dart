import 'package:flutter/material.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        home: new LoginPage(),
        theme : new ThemeData(
            primarySwatch: Colors.blue
        ) //ThemeData
    ); //MaterialApp
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.brown,
      body: new Stack(
        children: <Widget>[
          new Form(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                height: 50,
                width: 50,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage('assets\\upslogo.png')
                  ),
                ),
              ),
              Text(
                  'Login With ADID',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height / 25, color: Colors.redAccent
                  )
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter ADID",
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter PassWord",
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              )
            ],
          ),

          )
        ],
      ),
    ); // Scaffold
  }
}

