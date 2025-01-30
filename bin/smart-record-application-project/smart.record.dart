import'dart:io';


//list and map data storage


void main(){
  List<Map<String,String>>records = [];


//smart record forth menu

while (true) {
  print("\n smart record application");
  print("\n 1.add record");
  print("\n 2.view record ");
  print("\n 3.search record");
  print("\n 4.exit");
  stdout.write("choose an option");

  //user input name and phone number

  String? choice = stdin.readLineSync();

  //add records 1


  if (choice == '1') {
    //add record
    stdout.write("Enter the name ");
    String? name = stdin.readLineSync();


    stdout.write("Enter the phone number");
    String? phone = stdin.readLineSync();

    if (name != null && phone != null) {
      records.add({'name': name, 'phone': phone});
      print("recorded is successfully");
    } else {
      print("invalid input try to again");
    }
//view recorded 2

    } else if (choice == '2') {
      print("\n all records");
      for (var i = 0; i < records.length; i++) {
        print(
            "${i + 1}.name:${records[i]['name']},phone:${records[i]['phone']}");
      }


      if (records.isEmpty) {}
      print("no record found");


      //search records 3

    } else if (choice == '3') {
      stdout.write("Enter the name search:");

      String? searchName = stdin.readLineSync();
      bool found = false;


      for (var records in records) {
        if (records['Name']?.toLowerCase() == searchName?.toLowerCase()) {
          print("Found: name:${records['name']},phone: ${records['phone']}");
          found = true;
          break;
        }
      }


      if (!found) {}
      print("no records found with name: $searchName");




      //exit

    } else if (choice == '4') {
      print("exit goodly!");
      break;
    } else {
      print("invalid choice,try again.");
    }
  }
}





