/*class Complex {
  late int r;
  late double rl;

//Constructor
Complex({this.r=0, this.rl=0});

 Complex sum (Complex c2)
{
  Complex c= Complex();
  c.r= this.r+c2.r;
  c.rl= this.rl+c2.rl;
  return c;
}
}*/
class Complex {
  late double r;
  late double i;

//Constructor
  Complex({ this.r=0.0, this.i=0.0 });

  static Complex sumComplex({
   required Complex firstComplex,
   required Complex secondComplex,
  })
  {
    Complex res =Complex();
  res.r= firstComplex.r + secondComplex.r ;
    res.i= firstComplex.i +secondComplex.i ;
    return res;
  }

  static Complex subComplex({
  required Complex firstComplex,
  required Complex secondComplex,
})
  {
     Complex res =Complex ();
     res.r= firstComplex.r - secondComplex.r ;
     res.i =firstComplex.i - secondComplex.i;
     return res;
  }
  static Complex mulComplex({
  required firstComplex ,
    required secondComplex,
  })
  { Complex res =Complex();
  res.r=firstComplex.r * secondComplex.r ;
  res.i =firstComplex.i * secondComplex.i;
  return res;
  }
  void printComplex(){
    print('$r , $i');
  }
}

