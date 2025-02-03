import'package:flutter/material.dart';



void main(){
  runApp(
      MaterialApp(
       debugShowCheckedModeBanner:  false,

        home: MyApp(),
      ),
  );
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  MyAppState createState() => MyAppState();
}



    class MyAppState extends State<MyApp> {

      final TextEditingController nameController = TextEditingController();
      final TextEditingController numberController = TextEditingController();


      List<Map<String, String>> items = [];


      void addItem() {
        String name = nameController.text.trim();
        String number = numberController.text.trim();


        if (name.isNotEmpty && number.isNotEmpty) {
          setState(() {
            items.add({'name': name, 'number': number});
          });


          nameController.clear();
          numberController.clear();
        }
      }


      void deleteItem(int index) {
        showDialog(
          context: context,
          builder: (context) =>
              AlertDialog(


                title: Text('Confarm delete'),
                content: Text('Are you sure you want to me delete this item?'),



                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel'),
                  ),



                  TextButton(
                      onPressed: () {
                        setState(() {
                          items.removeAt(index);
                        });


                        Navigator.pop(context);
                      },

                      child:
                      Text(
                        "Delete",


                        style:
                        TextStyle(color: Colors.purple),
                      )
                  ),
                ],
              ),
        );
      }


      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title: Text('moduol 10 assingment')),
          body: Padding(
            padding:
            EdgeInsets.all(16.0),


            child: Column(
              children: [
                TextField(
                  controller:
                  nameController,


                  decoration:
                  InputDecoration(labelText:
                  'Enter name'),


                  keyboardType:
                  TextInputType.number,
                ),


                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: addItem,
                  child: Text('Add'),
                ),


                Expanded(
                  child:
                  ListView.builder(
                    itemCount:
                    items.length,


                    itemBuilder:
                        (context, index) {


                      return
                        GestureDetector(
                          onLongPress: () => deleteItem(index),


                          child: Card(
                            child:
                            ListTile(
                              title:
                              Text(items [index]['name']!),


                              subtitle:
                              Text(items[index]['number']!),

                            ),
                          ),
                        );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }










