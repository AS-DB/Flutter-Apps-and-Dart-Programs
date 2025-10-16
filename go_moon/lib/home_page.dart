import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double? _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          child: _destinationDropDownWidget(),
          padding: EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    return const Text(
      "#GOMoon",
      style: TextStyle(
        color: Color.fromARGB(255, 239, 224, 224),
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Rengoku.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<DropdownMenuItem<String>> _items =
        ['James Web Station', 'Prenuer Station'].map((e) {
          return DropdownMenuItem(child: Text(e), value: e);
        }).toList();
    return Container(
      child: DropdownButton(items: _items, onChanged: (_) {}),
    );
  }
}
