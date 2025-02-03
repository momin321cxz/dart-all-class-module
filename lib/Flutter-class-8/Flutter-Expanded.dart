import'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

@override
    Widget build(BuildContext contex)
{

return MaterialApp(
home: Scaffold(
  appBar:AppBar(
  title:
  Text('the Expanded Application')),
  body: Column(
  children: [

    //this is the log

Expanded(
  flex: 2,
child: Container(
  color: Colors.purple,
child: Center(
child: Text('LOGO',
style:
    TextStyle(fontSize:40,color:Colors.lightBlue),
),
),
),
  ),


// this is the form

Expanded(
flex: 3,

child: Padding(
  padding: EdgeInsets.all(15),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,


children: [
  TextField(
decoration:
  InputDecoration(
  labelText: 'Enter your Email',


border:

  OutlineInputBorder(),
),
  ),

  SizedBox(height: 31),

TextField(
  obscureText:
  true,

  decoration:
  InputDecoration(
  labelText: 'Passord',

border:
  OutlineInputBorder()

  ),
  ),
  ],
  ),
),
  ),




  //   button

Expanded(
  flex: 2,

child:Container(
  color: Colors.pink,
  child: Center(
  child: Text('Login',


  style:
  TextStyle(fontSize: 40,color: Colors.blue),

  ),
  ),
),
  ),
  ],
  ),
  ),
);
}
}







