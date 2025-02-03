import'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransactionListScreen(),

    );
  }
  }

 class TransactionListScreen extends StatelessWidget{
  final List<String> transactions = List.generate(100, (index)=>"Transaction#${index+1}");


@override
Widget build(BuildContext context)
  {


return Scaffold(
appBar: AppBar(
title: const Text("TransactionList"),
),

body:
Scrollbar(
thumbVisibility: true,
thickness: 1,

radius:
const Radius.circular(10),


child:
ListView.builder(
  itemCount:
transactions.length,


itemBuilder:
    (context, index){
  return ListTile(


  title:
  Text(transactions [index]),
  subtitle:
  Text("Details of${transactions[index]}"),
  );
  },
  ),
  ),
  );
  }
  }


















































