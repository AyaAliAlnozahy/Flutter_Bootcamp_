class Employee {
  late int id; //late mean should find value (not null)
  late String fName;
  late String lName;
  late int age;
  late double salary;

  //Constructor//
  Employee(
      {int id = 0, String fName = 'user', String lName = 'user', int age = 10, double salary = 100}) //Optional Parameters
  {
    this.id = id;
    this.fName = fName;
    this.lName = lName;
    this.age = age;
    this.salary = salary;
  }

  void showClass() {
    print('id is $id');
    print('Full name ${fName + '' + lName}');
    print('age is $age');
    print('salary is $salary');
  }

 static  Employee concatEmployee(Employee e1, Employee e2)
 {
   Employee e=Employee();
    e.id=e1.id+e2.id;
   e.fName=e1.fName+e2.fName;
   e.lName=e1.lName+e2.lName;
   e.age=e1.age+e2.age;
   e.salary=e1.salary+e2.salary;
   return e;
  }
}