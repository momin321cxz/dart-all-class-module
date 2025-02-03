import'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: ContactListScreen(),
    );
  }
}


class ContactListScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [


    {"Name": "Md mominor rahman", "phone ": "01909762131"},
    {"Name": " Md Sakib Hasan", "phone ": "01402033607"},
    {"Name": "Md Morsalin hasan", "phone ": "01842787058"},
    {"Name": "Md Sagor Hasan", "phone ": "01909762134"},
    {"Name": "Md Ripon Hasan", "phone ": "01745741442"},
    {"Name": "Md Milon Hasan", "phone ": "01402033608"},

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts List"),
      ),


      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(


            leading: CircleAvatar(
              child:
              Text(contacts[index]['name']![0]),
            ),


            title:
            Text(contacts[index]['name']!),
            subtitle:
            Text(contacts[index]['phone']!),
            trailing: IconButton(
              icon:
              Icon('Icon' as IconData),


              onPressed: () {
                print("Calling${contacts[index]['phone']}...");
              },
            ),
            onTap: () {
              print("Tabbed on${contacts[index]['name']}!");
            },
          );
        },
      ),
    );
  }
}



























































































mixin contacts {
}