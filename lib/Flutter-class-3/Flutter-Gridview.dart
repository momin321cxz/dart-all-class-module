import'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
home:ProductGrid(),
));
  }


class ProductGrid extends StatelessWidget{

  final List< Map <String, String>> Products =[


  {'name':'laptop','image':'assets/laptop.png'},
{'name':'smart mobile','image':'assets/smart mobile.png'},
{'name':'computer','image':'assets/computer.png'},
{'name':'tv','image':'assets/tv.png'},
{'name':'headphone','image':'headphone'},
];


  @override
    Widget build(BuildContext context)
{


  return Scaffold(
      appBar: AppBar(
  title:
  Text("Product Grid")),
    body: GridView.builder(


    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:4,
      crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    ),


    itemCount: Products.length,
  itemBuilder: (context, index)
{
final Product = Products [index];


return Card(
  elevation:20 ,
child: Column(
  mainAxisAlignment:
  MainAxisAlignment.center,


  children: [
    Image.asset(Product['image']!,
  height:100,

fit: BoxFit.cover),
SizedBox(height: 10,),
Text(
  Product['name']!,

  style:
  TextStyle(fontWeight:
  FontWeight.w800),
  ),
  ],
  ),
  );
  },
  ),
  );
}
}





