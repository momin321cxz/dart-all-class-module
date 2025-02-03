import'package:flutter/cupertino.dart';


void main(){
  runApp(
      CupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {


  @override
  Widget build(BuildContext contex)
    {


    return CupertinoApp(
      title: (" My CupertinoApp Example"),
      theme: CupertinoThemeData(
        primaryColor:
        CupertinoColors.activeGreen,


        barBackgroundColor:
        CupertinoColors.systemPink,

      ),
      home: CupertinoHomePage(),
    );
  }
}



class CupertinoHomePage extends StatelessWidget{



  @override
    Widget build(BuildContext context)
  {


return CupertinoPageScaffold(
    navigationBar:
CupertinoNavigationBar(

middle:Text('ios style app'),
    ),


    child:Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,

      children: [
         Text(
           'Cupertino to ios Application',

      style:
        CupertinoTheme.of(context).textTheme.textStyle,
    ),

      SizedBox(height: 20),
      CupertinoButton(
    color: CupertinoColors.systemPink,
      child: Text('Show Alert'),



      onPressed:() {
        showCupertinoDialog(
          context: context,
          builder: (context) =>
              CupertinoAlertDialog (
                  title: Text('Alert'),

                  content:
                  Text('This is ios style alert dialog.'),

                  actions:[


              CupertinoDialogAction(
              child: Text('Cancel'),

          onPressed: () => Navigator.pop(context),
        ),


        CupertinoDialogAction(

        child:
        Text('Ok'),

        onPressed: ()
        => Navigator.pop(context),


        ),
        ],
        ),

        );
      },
    ),
    ],
),
    ),
);
  }
}























