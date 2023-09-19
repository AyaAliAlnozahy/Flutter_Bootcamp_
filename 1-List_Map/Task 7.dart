//List users=[]
// id: int
//name: String
//Product_Price []
//Total
//Avg
import 'dart:io';
 void main()
{
  List<Map> users = []; //List to store users information as maps
  List<double> prices=[]; //List to store product prices information as maps
  double sum=0; //variable to calculate the sum of product prices for each user
  double avg;      // variable to calculate the avg of product prices for each user
  String status;   // variable to determine user status of  avg ,product, prices for each user

  //Prompt the user to enter the number of users
  print('enter number of users');
  int user = int.parse(stdin.readLineSync()!);
  //Loop through for each customer
  for (int i = 0; i < user; i++) {

    //Prompt for customer details
    print('Enter ID for users [${i + 1}]:');
    int id = int.parse(stdin.readLineSync()!);

    print('Enter Name for users[${i + 1}]:');
    String name = stdin.readLineSync()!; //String for Names

    print('Enter no.of Product_Price for users [${i + 1}]:');
    int nProduct = int.parse(stdin.readLineSync()!);

    print('Enter  Product_Price for users [${i + 1}]:');
     List<int>price=[];

     //Loop through for each product price and calculate sum
    for (int j= 0; j< nProduct; j++)
    {
      double price = double.parse(stdin.readLineSync()!);
      prices.add(price);
      sum += price  ;
    }

    //calculate the avg of product prices and determine user status
    avg=(sum/nProduct).roundToDouble() ;
    if (avg<100)
      status='Poor';
    else if(avg<300)
      status='Intermediate';
   else
     status='Rich';
   //Create the user Map and Add it to User List
   Map m_users={
     'Id': id,
     'name': name,
     'Prices': prices,
     'Sum': sum,
     'Avg': avg,
     'Status': status,
   };
    users.add(m_users);
    //Reset the sum for the next customer
    int sum = 0;
  }
  users.forEach((element)
  {
    print(element);
  });
}

