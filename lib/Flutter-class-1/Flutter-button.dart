import'package:flutter/material.dart';
import 'package:flutter_projects/main.dart';

void main() => runApp(const MyApp());
 class MyApp extends StatelessWidget{
  const MyApp({super.key});
  

   @override
   Widget build (BuildContext Context)
   {
     
     return MaterialApp(
     home: Scaffold(
     appBar:AppBar  (title:const Text("Flutter button Example") ),
     body : Center(
   child: ElevatedButton(
   onPressed: (){
       print("Product added to card!");
   },
   
     
style: 
ElevatedButton.styleFrom(
     foregroundColor: Colors.amberAccent, backgroundColor: Colors.blue,


padding: 
EdgeInsets.symmetric( horizontal: 18,vertical: 16),
),
     child:Text("Add to card"),
       
     
     ), 
     ),
     ),
     );
   }
 }
































     