import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {

  final String title;

  Gesture({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        final snackbar = new SnackBar(content: new Text("Hello Gestures!"), backgroundColor: Theme.of(context).backgroundColor,duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 1000, microseconds: 0), );
        Scaffold.of(context).showSnackBar(snackbar);
      } ,
      
      //the actual button
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.5)
        ),
        child: new Text("First Button!"),
      ),
      
    );
  }

}
