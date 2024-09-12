void main(){

  Person userOne = Person(username: 'Shaqib',address: 'Rajshahi',age: 12);
  Person userTwo = Person(username: 'Rakib', address: 'Jasore', age: 24);

  /*userOne.username = "Rakib";
  userOne.address = "Dhaka";
  userOne.university = "DIU";*/

  print(userOne.getPersonAddress());


  MathOperation mop = MathOperation();
  userOne.updateUserName('Rasel');
  print(userOne.username);

  print(userOne.university);
  userOne.updateUniversity('Dhaka University');
  print(userOne.university);

}

class Person{

  String username = '';
  String address  = '';
  late String university = '';
  int age;

  Person({required this.username, required this.address, required this.age}){


    print("hello creating an object");

  }

  //method

  String getPersonAddress(){

    return address;
  }

  void updateUserName(String username){
    this.username = username;
  }

  void updateUniversity(String university){

    this.university = university;
  }

}

class MathOperation{

  MathOperation(){

    print("This is Math Operation");
  }

  int add(int a,int b){
    return a+b;
  }

  int substraction(int a,int b){
    return a-b;
  }

}