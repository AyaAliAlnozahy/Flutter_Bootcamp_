// Dart List Operations Program
//Add ,Update ,remove ,search and show value For Map
import 'dart:io';

void main() {
  // Initialize an empty list to store integers.
  // Initialize a variable to control the loop.
  Map myMap = {};
  List keys = [];

  String again = "y";
  // Display options and perform operations until the user decides to exit.
  while (again == "y" || again == "Y") {
    print("Enter Options");
    print("1- Add element\n2- Update values\n3- Remove value\n4- Search for element\n5- Show list");

    // Read the user's selected option.
    int? option = int.parse(stdin.readLineSync()!);

    if (option == 1)
      // Option 1: Add elements to the list.
      print("Enter size of list: ");
    int? size = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < size; i++) {
      print("Enter Key: ");
      int myKey = int.parse (stdin.readLineSync()!);
      print("Enter Value: ");
      int myValue = int.parse(stdin.readLineSync()!);
      myMap[myKey] = myValue;
      keys.add(myKey);
    }
    if(option ==2){
  print("Enter old Value: ");
  int myValue = int.parse(stdin.readLineSync()!);
  myMap.forEach((key, value) {
  if(value==myValue)
  {
  print("Enter a new value");
  int newValue= int.parse(stdin.readLineSync()!);
  myMap[keys]=newValue;
  print("myValue");
  }else
  print('notFound');
  });
  }

    else if (option == 3) {
          // Option 3: Remove values from the list.
          print("1- Remove value/n");
          int removeOption = int.parse(stdin.readLineSync()!);
             myMap.remove(removeOption);
          }

          else if (option == 4) {
          // Option 4: Search for an element in the list.
          print("Enter value you want to search: ");
          int val = int.parse(stdin.readLineSync()!);
          keys.contains(val);
          }

          else if (option == 5)
          {
          // Option 5: Show the current state of the list.
          print(myMap);
          }


      // Ask the user if they want to perform another operation.
      print("Do you want to perform another operation? Enter 'y' or 'n': ");
      again = stdin.readLineSync()!;
    }
  }
