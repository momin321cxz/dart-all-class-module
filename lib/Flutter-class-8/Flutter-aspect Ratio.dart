import'package:flutter/material.dart';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title:
            Text('Aspect Ratio for Example')),
        body: Center(
          child: AspectRatio(
            aspectRatio: 15 / 6,


            child: Container(
              color: Colors.purple,


            ),
          ),
        ),
      ),
    );
  }
}
























