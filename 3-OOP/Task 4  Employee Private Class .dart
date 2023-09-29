class Employee
{
  late int _id;
  late String _fName,_lName;
  late int _age;
  late double _salary;
  //Constructor//
Employee ({int id=0, String fName='user',String lName='user', int age=0, double salary=0 })
  {
    this._id=id;
    this._fName=fName;
    this._lName=lName;
    this._age=age;
    this._salary =salary;
}

void setId (int a)
{
  _id=a;
}
int getId() => _id;  // Arrow Function

  void setFName(String a)
{
  _fName=a;
}
String getFname()=> _fName; //Arrow Function

  void showClass()
{
  print ('id $_id');
  print('Full name ${_fName+ '' +_lName}');
  print('age is $_age');
  print('salary is $_salary');
}
  static Employee concatEmployee (Employee e1 ,Employee e2)
  {
    Employee e=Employee();
    e._id=e1._id + e2._id;
    e._fName=e1._fName + e2._fName;
    e._lName =e1._lName +e2._lName;
    e._age=e1._age+e2._age;
    e._salary=e1._salary+e2._salary;
return e;
  }
}

main()
{
Employee e1 =Employee(id :100 , salary:3000);
print(e1.getId());// get print a value

e1.setId(200); // set give my value
print (e1.getId());

print(e1.getFname());

e1.setFName('aya'); // set give my value
print (e1.getFname());

}