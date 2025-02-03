import 'package:flutter/material.dart';

import '../main.dart';

void main() => runApp(const MyApp());
 class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context)
    {
      return MaterialApp(
        home: ProductCard(),
      );
    }
  }

  class ProductCard extends StatelessWidget{

    @override
    Widget build(BuildContext Context) {
      return Scaffold(
        appBar: AppBar(title:
        Text("product Card example")),
        body: Center(
          child: Container(
              width: 200,
              height: 300,
              padding:
              EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),



              decoration:
              BoxDecoration(
                color: Colors.green,
                borderRadius:
                BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(



                    color:

                    Colors.green.withOpacity(1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),


              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.baseline,
                children: [
                Container(
                height: 200,
                width: double.infinity,
                decoration:
                BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:
                  DecorationImage(image:
                  NetworkImage(
                      ' https://github.com/facebook/react-native/issues/23471'),


                    fit:
                    BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text("Product Name style",


                style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height:5),
          Text("\$100",
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.normal),


          ),

          ElevatedButton(
            onPressed: () {
              print("product added to card!");
            },
            child: Text("Added to card"),
          )
          ],
        ),
      ),)
      ,
      );
    }
  }





