class MyClass{

  var MyName = "Shaqib khan";
  var Alphabet = ['A','B','C'];

  static addTwoNumber(int x, int y){

    print(x+y);
  }

  addThreeNumber(int x, int y, int z){

    print(x+y+z);
  }


  //constructor
  //it can not return anything, automatically call hoy

  MyClass(String msg){
    print(msg);
  }


  //this keyword

  var num1=10;
  var num2=20;


  add(){
    var res = this.num1+this.num2;
    print(res);
  }

  myfunc(){
    this.add();
  }
}
