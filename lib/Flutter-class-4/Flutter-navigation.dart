import'package:flutter/material.dart';

import '../Flutter-class-9/Flutter-device-preveiw.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: ('Todo App'),
      theme: ThemeData(
        brightness:
        Brightness.light,
        primarySwatch: Colors.blue,
      ),



      darkTheme: ThemeData(
        brightness:
        Brightness.dark,
        primarySwatch:
        Colors.green,
      ),


      themeMode:
      ThemeMode.system,
      home: Homepage(),

    );
  }

  static of(BuildContext context) {}
}




//Theme Homepage

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {


    //theme Detect

    var brightness = MediaQuery.of(context).platformBrightness;

    bool isDarkMode =brightness== Brightness.dark;


    return Scaffold(
      appBar: AppBar(
        title:Text('Todo App'),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Text(
              "Current Theme: ${isDarkMode? "Dark":"light"}",
              style:
              TextStyle(fontSize: 20),
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){


//Theme Change

                showDialog(
                  context: context,
                  builder: (_)=>

                      ThemeDialog(),
                );
              },
              child:Text("Change theme"),

            ),
          ],
        ),
      ),
    );
  }
}

class ThemeDialog  extends StatelessWidget {
  const ThemeDialog({super.key});




  @override
  Widget build(BuildContext contex) {
    return AlertDialog(
      title: Text("Select theme"),
      content: Column(
        mainAxisAlignment:
        MainAxisAlignment.center,


        children: [
          ListTile(
            title: Text("light theme"),
            onTap: () {



              //light theme set


              Navigator.of(contex).pop();
              MyApp.of(contex).setThemeMode(ThemeMode.light);
            },
          ),

          ListTile(
            title: Text("dark Theme"),

            onTap: () {


// dark mode sat


              Navigator.of(contex).pop();

              MyApp.of(contex).setThemeMode(ThemeMode.dark);
            },
          ),
        ],
      ),
    );
  }
}




