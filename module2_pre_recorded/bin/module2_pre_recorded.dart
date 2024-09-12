import 'dart:io';

void main(){


  //same type data
  var myCitySet = <String> {'dhaka','barishal','cox'};

  print(myCitySet);

  myCitySet.add("khulna");
  print(myCitySet);
  myCitySet.addAll({'a','b','c'});
  print(myCitySet);

  print(myCitySet.elementAt(2));

  myCitySet.clear();

  print(myCitySet);


  myCitySet.addAll({'a','b','c'});
  print(myCitySet);

  print(myCitySet.first);
  print(myCitySet.last);
  print(myCitySet.isEmpty);
  print(myCitySet.isNotEmpty);
  print(myCitySet.length);
  print(myCitySet.hashCode);

  var person = {

    'name':'shaqib',
    'age':33,
    'city':'dhaka',

  };

  person['country']='BD';

  print(person);


  //Map creation using constructor

  var person2 =  new Map();

  person2['name']='shqib';
  person2['age']=12;
  person2['city']='Dhaka';

  print(person2);
  print(person2.values);


  print(person2.values);
  print(person2.entries);
  print(person2.isEmpty);
  print(person2.keys);
  print(person2.hashCode);
  print(person2.runtimeType);


  person2.addAll({'gender':'male', 'BG':'O+'});
  print(person2);

  person2.remove('BG');
  print(person2);

  person2.clear();
  print(person2);



  //control flow

  var marks = 89;

  if(marks<100){
    print("result");
  }
  else if(marks==0){
    print('No');
  }
  else{
    print("no Reuslt");
  }


  var m =  20;

  switch(m){

    case 20:
      print('A');
      break;

    case 60:
      print('B');
      break;

    default:
      print("NOOOO");
      break;
  }


  for(int i=0; i<5; i++){
    print(i);
  }

  var l1 = [10,20,30];

  for(var i in l1){
    print(i);
  }

  var set1 = {'a','b','c'};

  for(var i in set1){
    print(i);
  }


  var productList  = [

    {'name':'soap','price':100},
    {'name':'suger','price':20},

  ];


  for(var i in productList){

    var item = "product name is ${i['name']} and price ${i['price']}";
    print(item);
  }

  int i=0;
  while(i<2){
    i++;
    print(i);
  }

  i=2;
  do{
    print("shaqib");
    i++;
  }while(i<1);

  int r = fun(1,2);
  print(r);
}

int fun(int a,int b){

  print("Function");
  return a+b;
}