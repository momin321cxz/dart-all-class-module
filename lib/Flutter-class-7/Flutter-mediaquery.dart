import'package:flutter/material.dart';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

@override
    Widget build(BuildContext context)
{
  return MaterialApp(
    home: Scaffold(
   appBar: AppBar(
  title:  Text('Media Query Example')),
    body: ResponsiveWeight(),
  ),
  );
}
}


class ResponsiveWeight extends StatelessWidget{






  @override
  Widget build(BuildContext context)
  {



  // mediaQuery height and weight

  double ScreenWidth= MediaQuery.of(context).size.width;

  double ScreenHeight= MediaQuery.of(context).size.height;



  // orientation bar kora

  Orientation orientation = MediaQuery.of(context).orientation;


  return Center(
 child:Column(
   mainAxisAlignment: MainAxisAlignment.center,

  children:[
    Text('Screen weight:$ScreenWidth ',


    style:
    TextStyle(fontSize: 20),
    ),


  Text('screen height":$ScreenHeight',

  style:
  TextStyle(fontSize:20),
  ),



  Text(
 'Orientation : ${orientation  ==Orientation.portrait?'Portrait':'Landscape'}',

    style:
      TextStyle(fontSize: 20),

  ),



//responsiveButton

  Container(
    width: ScreenWidth*0.6,
height: ScreenHeight*0.6,


margin: EdgeInsets.all(20),
child: ElevatedButton(
    onPressed: (){},
    child: Text('Responsive button'),

  
    ),
    ),
    ],
    ),
    );
  }
}











