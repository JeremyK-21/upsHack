import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:testing_app/main.dart';
import 'package:testing_app/profile.dart';


void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  )
);



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  PageController _controller = PageController(
    initialPage: 0,
  );
}

class _HomePageState extends State<HomePage> {
  Material myApps(IconData icon, heading, int color) {
    return Material(
      color: Colors.grey,
      shadowColor: Colors.white,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Text(heading,
                          style: TextStyle(
                            color: new Color(color),
                            fontSize: 20.0,
                          ),
                        ),
                  ),
                  Material(
                      color: new Color(color),
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 30,
                          )
                      )
                  )
                ],
          ),
        ],
          )
      )
    ),
    );
  }
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: Text('UPS Virtual Assistant'),
      ),
      body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          myApps(Icons.access_alarm, "Reminders",0xFFFF0000),
          myApps(Icons.map, "Maps",0xFFFFA500),
          myApps(Icons.textsms, "Chat Bot",0xFFFFC0CB),
          myApps(Icons.hearing, "Healthcare",0xFF00FFFF),
          myApps(Icons.insert_chart, "Organization Chart",0xFFFF00FF)
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 120.0),
          StaggeredTile.extent(2, 120.0),
          StaggeredTile.extent(2, 120.0),
          StaggeredTile.extent(2, 120.0),
          StaggeredTile.extent(2, 120.0)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color.fromARGB(255, 0, 0, 0)),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map,color: Color.fromARGB(255, 0, 0, 0)),
            title: Text('Maps'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.textsms,color: Color.fromARGB(255, 0, 0, 0)),
            title: Text('Chat Bot'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm,color: Color.fromARGB(255, 0, 0, 0)),
            title: Text('Reminders'),
          )
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
    );
  }
}




