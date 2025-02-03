import'package:flutter/material.dart';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';

void main(){
  runApp(MyApp());
}


class WrapExample extends StatelessWidget {



  final List <String> item = [

    'c',
    'c++',
    'java',
    'javascript',
    'python',
    'php',
    'r',
    'laravel',
    'dart',
    'flutter',
    'react native',
  ];



  WrapExample({super.key});

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),

      
      body: Padding(
        padding:
        EdgeInsets.all(1),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,



          children: item.map((item)
    {


            return Chip(
              label: Text(item),
              backgroundColor:
              Colors.lightBlue,
              labelStyle:
              TextStyle(color: Colors.pink),



            );
          }).toList(),

        ),
      ),
    );
  }
}












