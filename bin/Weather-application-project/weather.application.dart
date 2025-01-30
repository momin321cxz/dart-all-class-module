import'dart:io';

void main(){

 // weather data list and map storage

 var  weatherData = {"Dhaka": "sunny, 20C", "Chittagong":"Rainy, 21C", "Sylhet": "Cloudy,22C", "Rajshahi": "Hot,23C", "khulna":"windy, 24C", "Borishal": "Sunny, 25C", "Moimonshinho": "Hot, 26C",};

    print("Welcome to the weather application");


    //user to the name input

    stdout.write("Enter to the name city" );
 String? city = stdin.readLineSync();


 //Enter name is successfully city name


  if (city != null && weatherData.containsKey(city)) {
    print("weatherData is $city : ${weatherData[city]}");


    // Enter name is name is not city


  }else {
    print("Sorry, weather information for $city is not available.");
  }
  }









































