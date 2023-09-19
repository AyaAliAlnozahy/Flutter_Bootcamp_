//Function of Parameters
import 'dart:io';

void main() {
  String again = "y";
  while (again == "y" || again == "Y") {
    print("Enter Options");
    print("1- sum option\n2- sub option\n3- mul option\n4- mod option :");

// Read the user's selected option.
    int? option = int.parse(stdin.readLineSync()!);
    print('enter two numbers');
    int s1 = int.parse(stdin.readLineSync()!);
    int s2 = int.parse(stdin.readLineSync()!);
    if (option == 1) {
      sum(s1, s2);
    }
    else if (option == 2) {
      sub(s1, s2);
    }
    else if (option == 3) {
      mul(s1, s2);
    }
    else if (option == 4) {
      mod(s1, s2);
    }
    else {
      print('not found');
    }
  }
    print("Do you want to perform another operation? Enter 'y' or 'n': ");
    again = stdin.readLineSync()!;
  }
sum(int x1, int x2) {
  print(x1 + x2);
}
sub(int x1, int x2)
{
  print(x1-x2);
}
mul(int x1, int x2)
{
  print(x1*x2);
}
mod(int x1, int x2)
{
  print(x1/x2);
}