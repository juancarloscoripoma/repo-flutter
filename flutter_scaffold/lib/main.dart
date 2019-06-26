import 'package:flutter/material.dart';
import 'package:flutter_scaffold/src/ui/gesture.dart';
import 'package:flutter_scaffold/src/ui/makeItRain.dart';
import 'src/app.dart';
/*
void main(){
  runApp(App());
}
*/
/*
void main(){

  var title = "Gesture";
  runApp(new MaterialApp(
    title: title,
    home: new Gesture(title: title,) ,
  ));
}
*/
void main(){
  runApp(new MaterialApp(
    title: "Make it Rain",
    home: new MakeItRain(),
  ));
}