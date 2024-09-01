main(){

  //variable
  var x = 10;
  var y = 10.2;

  var z = x+y;
  print(z);

  print(z.runtimeType);

  //data type
  int a =5;
  double b = 3.2;
  String s = "My name is shaqib";
  String s2 = 'My country name is BD';
  bool n = true;
  n = false;

  var list = [1,2,3];
  print(list[0]);

  var city = ['dhaka','rangpur','khulna','barishal',10,20.2,true];

  print(city);

  //Map

  var student = {
    'name':'shaqib',
    'age':10,
    'dept':'Cse'
  };

  print(student['name']);

  //operators (+,-,*,/,%)

  int num = 10;

  print(num+num);

  //unary operator

  print('postfix');
  print(num++);
  print(num++);
  print(num++);

  num = 10;

  print('prefix');
  print(++num);
  print(++num);
  print(++num);

  //** Constant
  var thisYear = 2024;
  thisYear = 2025;

  const year = 19;
  //year = 10;

  final year2;
  year2=20;

  //List Properties;
  print('list properties');

  var CITY = ['Dhaka','Cox','Khulna'];

  var result = CITY.length;
  print(result);

  var result2 = CITY.first;
  print(result2);

  var result3 = CITY.last;
  print(result3);

  var result4 = CITY.reversed;
  print(result4);

  var result5 = CITY.isEmpty;
  print(result5);

  var result6 = CITY.isNotEmpty;
  print(result6);

  //var result7 = CITY.single;
  //print(result7);



  //**FIXED and GRWOABLE LIST

  const newlist = [1,2,3,4];

  var newlist2 = [1,2,3,4];


  //add, insert in list
  newlist2.add(5);
  print(newlist2);

  newlist2.addAll([7,8,9]);
  print(newlist2);

  newlist2.insert(0, 100);
  print(newlist2);

  newlist2.insertAll(0, [200,300,400]);
  print(newlist2);


  //remove, update;

  newlist2[0]=0;
  print(newlist2);

  newlist2.removeLast();
  newlist2.removeAt(0);
  print(newlist2);

  newlist2.remove(400);
  print(newlist2);

}