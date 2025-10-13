//Dart Functions
void main() {
  hello();
  print(add(1, 2));
  print(mul(2, 3));
}

//normal functions
void hello() {
  print("Hello");
}

int add(int a, int b) {
  return a + b;
}

//arrow function
int mul(int a, int b) => a * b;
