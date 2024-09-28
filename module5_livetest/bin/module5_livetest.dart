class Car{

  late String brand;
  late String model;
  late int year;

  Car(String brand, String model, int year){

    this.brand=brand;
    this.model=model;
    this.year=year;

  }

  int carAge(){

    return DateTime.now().year-year;

  }

}

void main(){

  Car c = Car('Toyota','Corolla',2015);

  print("Brand: ${c.brand}");
  print("Model: ${c.model}");
  print("Year: ${c.year}");
  print("Car Age: ${c.carAge()}");

}
