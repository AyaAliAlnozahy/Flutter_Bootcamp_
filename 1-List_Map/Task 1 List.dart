// Dart Program: List Statistics
// This program takes user input for a list of numbers and print all data,
// calculates the sum, average, maximum, and minimum values,
// and then displays the results.
import 'dart:io';
void main() {

   List<int>myList=[];
   print('enter the size of list');
   int size=int.parse(stdin.readLineSync()!);
   print('enter the number of list');
   for(int i=0; i<size; i++)
   myList.add(int.parse(stdin.readLineSync()!));
   int sum=0 ,max=myList[0], min=myList[0];
   myList.forEach((element) {
     print(element);
     sum=sum+element;
     if(max<element)
       max=element;
     if(min>element)
       min=element;
   });
   print('sum is $sum/n avg is ${sum/myList.length}/n max is$max /n min is$min');
 }
