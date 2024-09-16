class Human{

  void eating(){
    print('Eating');
  }

  void moving(){
    print('Moving');
  }
}

class Student extends Human{}

class Teacher extends Human{}

class Engineer extends Human{}

class SoftwareEngineer extends Engineer{

  void coding(){
    print('coding in dart');
  }
}
