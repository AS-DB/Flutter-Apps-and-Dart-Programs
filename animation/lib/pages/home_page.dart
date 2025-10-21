import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double _buttonRadious = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [_pageBackground(), _circularAnimation()],
        ),
      ),
    );
  }

  Widget _pageBackground() {
    return Container(color: Colors.blue);
  }

  Widget _circularAnimation() {
    return Center(
      child: GestureDetector(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.bounceInOut,
          height: _buttonRadious,
          width: _buttonRadious,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(_buttonRadious),
          ),
          child: Text("Basic Button"),
        ),

        onTap: () {
          setState(() {
            _buttonRadious += _buttonRadious == 200 ? -100 : 100;
          });
        },
      ),
    );
  }
}
