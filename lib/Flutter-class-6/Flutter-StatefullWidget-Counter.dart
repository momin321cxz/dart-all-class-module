import'package:flutter/material.dart';

import '../Flutter-class-1/Flutter-button.dart';


void main(){
  runApp(MyApp());
}

class CounterWidget extends StatefulWidget {


  @override
  CounterWidgetState createState() => CounterWidgetState();
}



class CounterWidgetState extends State<CounterWidget> {

  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Counter Example")),

      body: Center(
        child: Text("Counter:counter"),
      ),


      floatingActionButton: FloatingActionButton(

        onPressed:
        incrementCounter,
        child: Icon(Icons.abc_rounded),
      ),
    );
  }

}





