import 'dart:io';

GetList(List<int>m_List)
{
  print('enter the size of list');
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++)
  {
    print('enter element');
    m_List.add(int.parse(stdin.readLineSync()!));
  }
}
int SumList(List<int> m_List)
{
  int sum=0;
  for(int i=0;i<m_List.length;i++)
    {
      sum+=m_List[i];
    }
  return sum;
}
double AVG_List(List<int> m_List)
{
  int sum=0;
  for(int i=0;i<m_List.length;i++)
  {
    sum+=m_List[i];
  }
  return sum/m_List.length;

}
ShowList(List<int> m_List)
{
  m_List.forEach((element)
  {
    print(element);
  });
}

Map MaxAndMinList(List<int> m_List)
{
  int max = m_List[0];
  int min = m_List[0];
  for (int i = 0; i < m_List.length; i++) {
    if (max <= m_List[i])
      max = m_List[i];
    else
      min = m_List[i];
  }
  Map my_max_min = { 'Max': max ,'min': min};
  return my_max_min ;
    }


void main()
{

  List<int> my_List=[];
  GetList(my_List);
  int sum=SumList(my_List);
  double avg=AVG_List(my_List);
  print('sum is $sum');
  print('avg is $avg');
  ShowList(my_List);
  Map my_max_min=MaxAndMinList(my_List);

  print(my_max_min);

}




