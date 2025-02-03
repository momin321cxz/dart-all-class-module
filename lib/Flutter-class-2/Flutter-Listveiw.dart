import'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


@override
    Widget build (BuildContext Context)
{

  return MaterialApp(
      home: FavoriteProductScreen (),
  );
}
}

class FavoriteProductScreen extends StatelessWidget {


  final List<String> products = [

    "laptop",
    "computer",
    "smart phone",
    "tv",
    "iot device",
    "dress",
    "motherbard",
    "book",
    "camera",
    "tablet",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite product"),
      ),


      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(


            leading:
            Icon(Icons.abc_rounded),
            title:
            Text(products[index]),
            onTap: () {
              print("Selected:$products[index])}");
            },
          );
        },
      ),
    );
  }
}









































































