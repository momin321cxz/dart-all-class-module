import'package:flutter/material.dart';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';

void main(){
  runApp(MyApp());
}


class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});



  @override
  WeatherWidgetState createState() => WeatherWidgetState();
}





class WeatherWidgetState extends State<WeatherWidget>{

  @override
  Widget build(BuildContext context) {



return Scaffold(
body: Center(
child:  Text('Wellcome is WeatherApplication!'),

),
    );
  }
}

























