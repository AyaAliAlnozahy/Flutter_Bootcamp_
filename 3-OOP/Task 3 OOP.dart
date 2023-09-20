import 'dart:io';
import 'Complex 3.dart';
main()
{
Complex firstComplex=Complex();
print('Enter r of firstComplex');
firstComplex.r=double.parse(stdin.readLineSync()!);
print('Enter i of firstComplex');
firstComplex.i=double.parse(stdin.readLineSync()!);

Complex secondComplex=Complex();
print('Enter r of secondComplex');
secondComplex.r=double.parse(stdin.readLineSync()!);
print('Enter i of secondComplex');
secondComplex.i=double.parse(stdin.readLineSync()!);
Complex res =Complex();
do {
  print('Enter the operation you want to choose [+,-,*]');
  switch (stdin.readLineSync()!) {
    case '+' :
      res = Complex.sumComplex(
          firstComplex: firstComplex, secondComplex: secondComplex);
      break;
    case '-' :
      res = Complex.subComplex(
          firstComplex: firstComplex, secondComplex: secondComplex);
      break;
    case '*':
      res = Complex.mulComplex(
          firstComplex: firstComplex, secondComplex: secondComplex);
      break;

    default:
      print('wrong choose');
  }
  res.printComplex();
  print('Do you want to do another operation [Y/N]');
}
while(stdin.readLineSync()!.toLowerCase()== 'y'? true : false);
}
