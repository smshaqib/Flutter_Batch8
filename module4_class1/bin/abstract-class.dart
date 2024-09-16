abstract class Human{

  void eating(){
    print('Eating');
  }

  void moving(){
    print('Moving');
  }

  void dressUP();  //ei method ta abstract ase ejonne eta override korte hobe naile error ashbe

  void dummy(){
    print('implemented method');
  }

}

class Father extends Human{
  @override
  void dressUP() {

    print('Wearing shirt and pant');

  }
}

class Mother extends Human{
  @override
  void dressUP() {

    print('Wearing Saree');
  }

}

abstract class Son extends Human{

}

class ABC extends Son{
  @override
  void dressUP() {
    // TODO: implement dressUP
  }

}

class Unknown implements Human{

  @override
  void dressUP() {
    // TODO: implement dressUP
  }

  @override
  void dummy() {
    // TODO: implement dummy
  }

  @override
  void eating() {
    // TODO: implement eating
  }

  @override
  void moving() {
    // TODO: implement moving
  }


}