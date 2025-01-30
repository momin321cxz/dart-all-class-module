import'dart:io';

void main() {
  while (true) {
    print("Enter the first number(or type 'exit' to quit");
    String? input1 = stdin.readLineSync();
    if (input1 == null || input1.toLowerCase() == 'exit') break;


    print("Enter the second number");
    String? input2 = stdin.readLineSync();


    print("choose an operation +,-,*,/,");
    String? operation = stdin.readLineSync();


    //input to  number convert

    double? number1 = double.tryParse(input1);
    double? number2 = double.tryParse(input2!);


    if (number1 == null || number2 == null || operation == null) {
      print("invalid input.please  again");
      continue;
    }


    // perform calculation


    //addition calculate

    double? rejult;
    switch (operation) {
      case'+':
        rejult = number1 + number2;
        break;


    //subtraction calculate

      case'-':
        rejult = number1 - number2;
        break;


    //multiplication calculate


      case'*':
        rejult = number1 * number2;
        break;


    //division calculate

      case'/':
        if (number2 != 0) {
          rejult = number1 / number2;
        } else {
          print("division by zero is not allowed");
          continue;
        }


        break;
      default:
        print("invalid operation +,-,*,or /.");
        continue;
    }


    print("rejult: $rejult");
  }


  print("thanks you for the calculator application project!");
}





























