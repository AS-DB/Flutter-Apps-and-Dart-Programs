//Dart string
void main() {
  String firstname = "Aditya";
  String lastname = "Das";
  String fullname = firstname + lastname;

  print(fullname);

  //length
  print(fullname.length);

  //lower
  print(fullname.toLowerCase());

  //upper
  print(fullname.toUpperCase());

  //trim
  print(firstname.trim());

  //substring
  print(fullname.substring(2, 7));

  //split
  print(fullname.split('a'));
}
