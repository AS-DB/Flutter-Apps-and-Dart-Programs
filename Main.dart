//Dart null safety
void main() {
  //null safety used here
  String? name;
  print(name);

  Car a = new Car();
  print(a!.car);
}

class Car {
  String car = "Tesla";
}
