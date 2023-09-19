import 'dart:io';

GetMap(Map<String , int> m_Map)
{
  print('enter the size of list');
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++)
  {
    print("Enter Key: ");
    String myKey = (stdin.readLineSync()!);
    print("Enter Value: ");
    int myValue = int.parse(stdin.readLineSync()!);
    m_Map[myKey] = myValue;
  }
}

int SumMap( Map<String , int> m_Map)
{
  int sum=0;
 m_Map.forEach((key , value)
 {

 sum=sum+(value);
  });
  return m_Map.length;
}
double AVG_Map(Map<String , int> m_Map)
{
  return SumMap(m_Map)/m_Map.length;
  }


ShowList(Map<String , int> m_Map)
{
  print(m_Map);
}

Map MaxAndMinMap(Map<String , int> m_Map)
{
  List< String>keys=[];
  m_Map.forEach((key , value)
  {
    keys.add(key);
  });
  int?max = m_Map[keys[0]];
  int?min =  m_Map[keys[0]];
  m_Map.forEach((key , value)
  {

    if (max! <= value) {
      max = value;
    }
    if (min!>= value)
      min= value;

  });
  Map my_max_min = { 'Max': max ,'min': min};
  return my_max_min ;
}


void main()
{
  Map<String , int> my_Map={};
  GetMap(my_Map);
  int sum=SumMap( my_Map);
  double avg=AVG_Map(my_Map);
  print('sum is $sum');
  print('avg is $avg');
  ShowList(my_Map);
  Map my_max_min=MaxAndMinMap(my_Map);
  print('max is ${my_max_min[my_max_min.keys.first]}');
  print('min is ${my_max_min[my_max_min.keys.last]}');

}




