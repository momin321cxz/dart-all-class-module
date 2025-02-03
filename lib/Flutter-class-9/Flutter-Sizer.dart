import'package:flutter/material.dart';

import 'Flutter-device-preveiw.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});



  @override
    Widget build(BuildContext context)
  {


    return FlutterSized(

builder:(context, orientation,screenType) {
  return MaterialApp(
    home: Homepage(),
  );
    },
    );

  }
}





class FlutterSized extends StatelessWidget{
  const FlutterSized({super.key, required MaterialApp Function(dynamic context, dynamic orientation, dynamic screenType) builder});



  @override
    Widget build(BuildContext context)
  {


return Scaffold(
    appBar: AppBar(
    title:const Text('E commerce application',



style:TextStyle(fontSize:30,color: Colors.purple)),
    ),


body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

children: [
  Container(
      width: 40,
      height: 40,


color: Colors.pinkAccent,
child: Text(
    'product image',


style: TextStyle(fontSize: 25,color: Colors.cyanAccent),

    ),
),



    SizedBox(height:0.9),
Text(

'product name',

    style:
    TextStyle(fontSize: 25,color: Colors.lightBlue),
  ),

    SizedBox(height: 0.9,),
    Text('\$30',

style:
    TextStyle(fontSize: 25,color: Colors.purple),



    ),

    ],
),

    ),

    );
  }
}










