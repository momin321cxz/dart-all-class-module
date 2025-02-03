
import'package:flutter/material.dart';

import '../Flutter-class-1/Flutter-button.dart';

void main(){
  runApp(MyApp());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});




  @override
  MyWidgetState createState() => MyWidgetState();
}




class MyWidgetState extends State<MyWidget> {

  @override

  Widget build(BuildContext context){


    return Scaffold(
      body:  Center(
        child: Text('Hellow My Statefull widget!'),

      ),
    );
  }
}

























































