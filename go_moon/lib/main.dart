import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoMoon",
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(18, 211, 166, 0.6),
      ),
      home: Scaffold(),
    );
  }
}
