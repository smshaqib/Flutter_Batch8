import 'person.dart';
class Person{

  int age = 32;
  String name = 'Rafi';


  String getPersonDetails(){

    return 'person details';
  }

  void eating(){
    print('eating food');
  }

  void moving(){
    print('Moving with walking');
  }

}


class AnotherPerson extends Person{

  //dart e method overloading support kore na
  @override
  void moving(){

    super.eating();
    print('Moving with BMW');
  }



}

void main(){


  AnotherPerson p = new AnotherPerson();

  print(p.age);
  print(p.name);

  p.eating();
  p.getPersonDetails();

  p.moving();

}