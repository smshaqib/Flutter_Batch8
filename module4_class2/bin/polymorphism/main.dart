import 'human.dart';

void main(){


  Human rahim = Human();

  Human karim = Student();
  //ei line ta kheal koro
  Human galib = SoftwareEngineer();

  galib.moving();
  //galib.coding(); eta error hobe cuz human galib object er moddhe
  //ekhon shudhu human er method gula ase, software engineering class er
  //method gula nai


  if(galib is SoftwareEngineer){
    galib.coding();
  }

  if(karim is SoftwareEngineer){

    karim.eating();
  }
}