import'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductCard(),
    );
  }
}

  class ProductCard extends StatelessWidget{

    @override
   Widget build(BuildContext context)
    {
  return Scaffold(
      appBar: AppBar(
  title:
  Text("The ProductCard")),


  body:
  Padding(
    padding:const
    EdgeInsets.all(20),
    child: Card(
  elevation: 8,


  shape:
  RoundedRectangleBorder(
  borderRadius:
  BorderRadius.circular(12),
  ),


  child: InkWell(
onTap: (){
print("Product Click Me!");


ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
    content:
Text('Product Details Coming Soon!')),

);
},
  borderRadius:
  BorderRadius.circular(20),
  splashColor:
  Colors.green.withOpacity(1),


  child: Column(
  mainAxisAlignment:
  MainAxisAlignment.center,
  children: [
    Image.network('https://www.shutterstock.com/150',
  height: 100,
  fit:
  BoxFit.cover,
  ),


  Padding(
  padding:const
  EdgeInsets.all(10),
  child:
  Text('Product Name',


style:
TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
  ),
  ),

  Padding(
  padding:const
  EdgeInsets.all(10),


  child:
  Text('Tab to see details',
style:
TextStyle(color:Colors.green),
    ),
  ),
  ],
    ),
  ),
),
  ),
  );

}
}











































