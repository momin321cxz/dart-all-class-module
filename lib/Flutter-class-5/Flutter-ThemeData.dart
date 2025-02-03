import'package:flutter/material.dart';

import '../Flutter-class-4/Flutter-navigation.dart';
import '../Flutter-class-9/Flutter-device-preveiw.dart';




void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E- Learning Application',
      theme: ThemeData(

//Primary colors

        primaryColor: Colors.blue,

//Seconds Colors
      hintColor:Colors.orange,



//TextTheme
        textTheme: TextTheme(

displayLarge:

          TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color:Colors.green),

          bodyLarge:
          TextStyle(fontSize: 20,color:  Colors.amberAccent),
        ),


//ButtonTheme

        buttonTheme: ButtonThemeData(
          buttonColor:
          Colors.brown,

          shape:
          RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(10),
          ),
        ),

//Appbar BarTheme


        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,

          titleTextStyle:
        TextStyle( fontSize: 20, fontWeight: FontWeight.bold,color:  Colors.white),
        ),
      ),

      home: Homepage(),


    );
  }
}


class HomePage extends StatelessWidget{






@override
    Widget build(BuildContext context)
{

style:
return Scaffold(
    appBar: AppBar(
  title:Text('Welcome to our e learning platform'),
  ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

children: [
  Text('Computer science is the best learning platform!',

        style:
        TextStyle(
    color:Colors.red,
  fontSize:25,
        ),
    ),

  ],
),
  ),
  );
}
}







