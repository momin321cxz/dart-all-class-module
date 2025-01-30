import'dart:async';

void main() {
  print("Digital smart watch started!\n");


  //Timer update

  Timer.periodic(Duration(seconds: 1), (timer) {
    //present time

    var now = DateTime.now();


    //Time formatted

    var formattedTime = "${now.hour}:${now.minute}:${now.second}";


    //this is the time formated rejult show

    print("Current Time: $formattedTime");
  });
















}