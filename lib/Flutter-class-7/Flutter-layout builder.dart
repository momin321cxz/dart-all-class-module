import'package:flutter/material.dart.';
import 'package:flutter_projects/Flutter-class-4/Flutter-navigation.dart';

void main(){
  runApp(MyApp());
}

class LayoutBuilderExample extends StatelessWidget{


  @override
    Widget build(BuildContext contex)
  {

return Scaffold(
    appBar: AppBar(
    title:
Text('LayoutBuilder Example')),
      body: LayoutBuilder(
  builder:  (BuildContext context,BoxConstraints constrains)
{


  if (constrains.maxWidth < 500) {
    return Center(
      child: Text('Small Scheen',
        style:
        TextStyle(fontSize: 20, color: Colors.green),

      ),
    );



}else{
        return const Center(
  child: Text('Large Screen',

style:
TextStyle(fontSize: 30,color: Colors.cyan),



    ),
    );
  }
  },
  ),
  );
}
}










