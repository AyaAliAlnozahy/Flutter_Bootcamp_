/*class Car {
  late String code;
  late String model;
  late String color;
  late double price;

  Car(
      {String code = 'xxx00', String model = 'no model entered', String color = 'no color entered', double price = 0.0})
  {
    this.code = code;
    this.model = model;
    this.color = color;
    this.price = price;
  }

  void printDetails()
  {
    print('"CAR DETAILS :\n ID:\t$code \n COLOR:\t$color \n MODEL:\t$model  \n PRICE:\t$price"');
  }
}*/
class Car {
  late String code;
  late String model;
  late String color;
  late double price;

Car ({String code='xxx', String model='no model entered',String color='no color entered',double price=0})
{
  this.code=code;
  this.model=model;
  this.color=color;
  this.price=price;
}


void printDetails()
{
  print('\n Car Details : \n ID :\t$code \n Model: \t$model, \n Color :\t$color \n Price: \t$price');
}
}


