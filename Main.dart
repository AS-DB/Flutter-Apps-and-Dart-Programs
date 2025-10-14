//Dart future and async and await
void main() async {
  //futureFunction();

  await futureFunction();
  print("Hello");
}

Future<void> futureFunction() async {
  await Future.delayed(Duration(seconds: 5));
  print("hello");
}
