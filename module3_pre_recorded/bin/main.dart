import 'MyClass.dart';

void main(){

  var obj = new MyClass("My name is constructor");

  MyClass.addTwoNumber(2, 5);
  obj.addThreeNumber(1, 2, 3);

  print(obj.Alphabet[0]);

  obj.add();
  obj.myfunc();

}

