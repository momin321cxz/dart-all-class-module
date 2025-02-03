import'package:flutter/material.dart';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';



void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context)=>DevicePreview(enabled:true, builder: (context) {  },),
    ),
  );

}


class DevicePreview extends StatelessWidget {
  static var appBuilder;

  const DevicePreview(
      {super.key, required bool enabled, required Function(dynamic context) builder});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder:
      DevicePreview.appBuilder,

      useInheritedMediaQuery: true,


      locale:
      DevicePreview.locale(context),

      home: HomePage(),

    );
  }

  static locale(BuildContext context) {}
}
  locale(BuildContext context) {}

   build(BuildContext context) {}



class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' E Commerce app'),
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Wellcome to the laptop!',

              style:
              TextStyle(fontSize: 20, color: Colors.purple),
            ),


            SizedBox(height: 20),
            ElevatedButton(onPressed: () {},
              child: const Text('Start Shoping'),


            ),
          ],

        ),
      ),


    );
  }

}







