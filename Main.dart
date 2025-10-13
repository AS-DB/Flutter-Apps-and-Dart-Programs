//Class and Objects
void main() {
  var c1 = new Car("v6");
  print(c1.engine);

  var c2 = new Car1("super");
  print(c2.engine);

  c1.start();
  c1.stop();

  c2.speed();
  print(c2.engine);
}

//Defining class here
class Car {
  //constructor define
  Car(this.engine);
  String engine;

  void start() {
    print("Car started");
  }

  void stop() {
    print("Car stopped");
  }
}

//inheritance
class Car1 extends Car {
  Car1(String engine) : super(engine);
  void speed() {
    print("Its to fast");
  }
}
