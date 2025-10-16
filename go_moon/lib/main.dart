import 'package:flutter/material.dart';
import 'package:go_moon/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoMoon",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 0.6)),
      home: HomePage(),
    );
  }
}
