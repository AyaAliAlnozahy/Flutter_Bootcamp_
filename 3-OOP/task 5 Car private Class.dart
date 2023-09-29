class Car {
  late String _code;
  late String _model;
  late String _color;
  late double _price;

  Car(
      {String code = 'xxx', String model = 'no model entered', String color = 'no color entered', double price = 0}) {
    this._code = code;
    this._model = model;
    this._color = color;
    this._price = price;
  }

  void setCode(String v) {
    _code = v;
  }

  String getCode() => _code;


  void setModel(String v) {
    _model = v;
  }

  String getModel() => _model;


  void printDetails() {
    print(
        '\n Car Details : \n ID :\t$_code \n Model: \t$_model, \n Color :\t$_color \n Price: \t$_price');
  }


  static Car concatEmployee(c1) {
    Car c = Car();
    c._code = c1._code;
    c._model = c1._model;
    c._color = c1._color;
    c._price = c1._price;
    return c;
  }
}
main()
{
  Car c1=Car ( code:'001' , model: 'ccv');

    print(c1.getCode()); //get for print

    c1.setModel('xxw'); //set for put my value
    print(c1.getModel());

}
