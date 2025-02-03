import'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: GestureExample(),
  ));
}

class GestureExample extends StatefulWidget {
  const GestureExample({super.key});


  @override
GestureExampleState createState() =>GestureExampleState();
}


class GestureExampleState extends State<GestureExample>{

double scale = 1.0;
double previousScale = 1.0;


@override
    Widget build (BuildContext context)
{

return Scaffold(
    appBar: AppBar(
  title:
    const Text('Image Zoom & Pan '),
    ),
    body:Center(
  child:
  GestureDetector(



//start
  onScaleStart: (details){

  previousScale = scale;
},


//update
    onScaleUpdate:(details){
 setState((){
scale = previousScale * details.scale;
});
},


//end
    onScaleEnd:(details) {
      previousScale = 1.0;
    },


child:Transform.scale(
scale:scale,
  child:Image.network(


    'https://www.svgator.com/vector-animation-software400',


  width: 300,
height: 300,
fit: BoxFit.cover,
  ),
  ),
),
  ),
  );

}
}
















































































