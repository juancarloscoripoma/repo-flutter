import 'package:flutter/material.dart';
import 'package:flutter_scaffold/src/ui/scaffoldWidget.dart';
import 'ui/movie_list.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: ScaffoldWidget(),
      /*
      home: Scaffold(
        body: MovieList(),
      ),
      */
    );
  }
}
