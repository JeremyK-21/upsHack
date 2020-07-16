import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:testing_app/map.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String>  _listItem = [
    'assets/images/chatBot.jpeg',
    'assets/images/medical.jpg',
    'assets/images/orgChart.png',
    'assets/images/mood.jpg',
    'assets/images/activity.jpg',
    'assets/images/alarm.jpg',
    'assets/images/calender.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("0")),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/gps.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.3)
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Location Services", style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Container(
                        height: 60,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(
                          child: FlatButton(child: Text('Locate'), color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                        ),
                      ),
                      ),SizedBox(height: 20,),
                  ],
                ),
              ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child:GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(0),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: _listItem.map((item) => Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Transform.translate(
                          offset: Offset(65, -60),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 70, vertical: 70),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Icon(Icons.add),
                        ),
                      ),
                    ),
                  )).toList(),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




