import'dart:io';

void main() {
  // newspaper  list to the storage

  List<String> newsList = [];


  while (true) {
    print('\n simple newspaper app ');


  // there are three menu


  print('1.Add news');
  print('2. view All news');
  print('3.exit news');
  stdout.write('choose an option:');
  String? choice = stdin.readLineSync();


  // add newspaper

  if (choice == '1') {
    stdout.write('Enter your news');

    String? news = stdin.readLineSync();
    if (news != null && news.isNotEmpty) {
      newsList.add(news);
      print(' news added is successfully! ');
    } else {
      print('invalid news.please try again.');
    }


    //view all news


  } else if (choice == '2') {
    print('\n === All news ===');
    if (newsList.isEmpty) {
      print('no news available.');



  } else {
    for (int i = 0; i < newsList.length; i++) {
      print('${i + 1}. ${newsList[i]}');
    }
  }


  // exit three
}else if (choice == '3'){
print('Exiting the app goodby!');
break;
}else{
  print('invalid option.please try again');
}

}

}













































