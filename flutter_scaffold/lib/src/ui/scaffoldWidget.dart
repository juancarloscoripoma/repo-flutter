import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    void _onPress(){
      print("Search Tapped...");
    }

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.greenAccent.shade700,
        title: new Text("Demo Scaffold"),

        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.send), onPressed: () => debugPrint("Icon Tapped pussed")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPress)
        ],
      ),
      // other properties
      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Bonni", style: new TextStyle(fontSize: 14.5, fontWeight: FontWeight.w400, color: Colors.deepOrange),),
            new InkWell(
              child: new Text("Button", style: new TextStyle(color: Colors.deepOrange),),
              onTap: ()=> debugPrint("Button Tapped!"),
            )
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: ()=> debugPrint("pressed!!!"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going up!',
        child: new Icon(Icons.call_missed),
      ),
      
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Hey")),
          new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("Nope ")),
          new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Hello"))
        ], onTap: (int i) => debugPrint("Hey Touched.. $i"),
      ),
      
    );
  }

}