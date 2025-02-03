import'package:flutter/material.dart';

import '../Flutter-class-1/Flutter-button.dart';

void main(){
  runApp(MyApp());
}

class MyAPP extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title:
            Text('this is the fractonal sizebox')),


        body: Center(
          child:
          FractionallySizedBox(
            widthFactor: 0.02,
            heightFactor: 0.01,


            child: Container(
              color: Colors.cyan,
              child: Center(
                child: Text(
                  'Halow! iam a mominor rahman ',


                  style:
                  TextStyle(fontSize: 40, color: Colors.pinkAccent),


                ),
              ),
            ),

          ),
        ),

      ),

    );

  }
}




