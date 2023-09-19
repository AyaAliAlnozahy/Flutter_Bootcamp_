/*import 'dart:io';
void main() {
  print('enter two numbers');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int result = Operation(n1: num1, n2: num2, ope: '+' '-' '*' '/');

  print(result);
}
// ignore: non_constant_identifier_names
Operation({ required String ope , int n1=0, int n2=0})
{
  switch (ope)
  {
    case '+':
    return n1+n2;
    case '-' :
      return n1-n2;
    case'*' :
      return n1*n2;
    case '/' :
      return n1/n2;
  }
*/

typedef operation (a,b);
main()
{
  operation op ;
  op=add;
  op(3,4);
  op=sub;
  op(3,4);
  op=mul;
  op(3,4);
}
add(a,b){
  print('$a+$b=${a+b}');
}
sub(a,b)
{
  print('$a-$b=${a-b}');
}
mul(a,b)
{
  print('$a*$b=${a*b}');
}
