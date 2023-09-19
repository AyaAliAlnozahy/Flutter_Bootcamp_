//Students =[{}]
//Code
//Name
//Degree=[] 5 values for each student
//Code is 101 and Name ali Degree [50,30,40,60,100]  sum 40% failed
//50 --- 65 pass
//66 --- 75 Good
//76 --- 85 Very Good
//86 --- 100 Excellent
import 'dart:io';
void main()
{
  List students = [];
  print('enter number of student');
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < number; i++)
  {
    print('Enter Code for Student');
    int code = int.parse(stdin.readLineSync()!);
    print('Enter Name for student');
    String name = stdin.readLineSync()!; //String for Names
    print('Enter Degree for student');
    List <int> degrees = [];
     for (int i = 0; i < 5; i++)   // Need 5 Values of degree for Each Student
    {
      degrees.add(int.parse(stdin.readLineSync()!));  //write 5 values of degrees
    }
    students.add(
        { 'code': code,
          'name': name,
          'degree': degrees,
        });
  }
  print(students);

  students.forEach((element)
  {
    int sum = 0;
    for (int i = 0; i < element['degree'].length; i++)   // sum all degrees for each student
    {
      List<int> l = element['degree'];
      sum+= l[i];
    }
    double per=(sum/500)*100;
    String result='per';

    if(per>=50 && per<=65)
      result='pass';
    else if(per>=66 && per<=75)
      result='Good';
   else  if(per>=76 && per<=85)
      result='Very Good';
    else if(per>=86 && per<=100)
      result='Excellent';
    else
      result='fail';

    print('code ${element['code']}, name ${element['name']}, degree ${element['degree']},  $sum , $per, $result');

  });
}