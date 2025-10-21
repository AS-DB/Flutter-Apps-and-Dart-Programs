import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  double _buttonRadious = 100;

  final Tween<double> _backgroundScale = Tween<double>(begin: 0.0, end: 1.0);
  AnimationController? _starIconAni;
  @override
  void initState() {
    super.initState();
    _starIconAni = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );
    _starIconAni!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _pageBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [_circularAnimation(), _starIcon()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _pageBackground() {
    return TweenAnimationBuilder(
      tween: _backgroundScale,
      curve: Curves.easeInOutCubicEmphasized,
      duration: Duration(seconds: 2),
      builder: (_context, _scale, _child) {
        return Transform.scale(scale: _scale, child: _child);
      },
      child: Container(color: Colors.blue),
    );
    //return Container(color: Colors.blue);
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

  Widget _starIcon() {
    return AnimatedBuilder(
      animation: _starIconAni!.view,
      builder: (_buildContext, _child) {
        return Transform.rotate(
          angle: _starIconAni!.value * 2 * pi,
          child: _child,
        );
      },
      child: Icon(Icons.star, size: 100, color: Colors.yellow),
    );
  }
}
