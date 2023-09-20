import 'dart:io';
import 'car 2.dart';
main() {
  int carNo = 0;
  String carCode,carModel,carColor;
  double carPrice,  priceSum = 0;
  List<Car> myCars = [];

  // Enter number of cars you will enter
  print('Enter Number of cars you want to add :');
  carNo = int.parse(stdin.readLineSync()!);

  // Loop for each Car
  for (int i = 0; i < carNo; i++) {
    // Car code Entry
    print('Enter Car no [${i+1}] code :');
    carCode = stdin.readLineSync()!;

    // Car Model Entry
    print('Enter Car no [${i+1}] Model :');
    carModel = stdin.readLineSync()!;

    // Car Color Entry
    print('Enter Car no [${i+1}] Color :');
    carColor = stdin.readLineSync()!;

    // Car price Entry
    print('Enter Car no [${i+1}] price :');
    carPrice = double.parse(stdin.readLineSync()!);

    // ADD Information to the List of cars
    myCars.add(
        Car(
          code: carCode,
          model: carModel,
          color: carColor,
          price: carPrice,
        )
    );
  } // END OF ENTER OF CARS INFO

  myCars.forEach((element) {
    element.printDetails();
    priceSum += element.price;
  });

  print('\nTOTAL PRICE IS $priceSum');
}

