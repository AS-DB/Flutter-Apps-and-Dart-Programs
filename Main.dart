//Dart Decision Statement
void main() {
  //if-else
  var num1 = 21;
  var num2 = 31;

  if (num1 > num2) {
    print("$num1 is great");
  } else if (num1 == num2) {
    print("$num1 is equal to other num also");
  } else {
    print("$num2 is greater then other");
  }

  var day = "Sunday";
  switch (day) {
    case "Sunday":
      print("Its the funny day");
      break;
    case "Monday":
      print("Its not a funday");
      break;
    default:
      print("No day is like exist");
  }
}
