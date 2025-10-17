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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [_pagetitle(), _destinationDropDownWidget()],
          ),
        ),
      ),
    );
  }

  Widget _pagetitle() {
    return const Text(
      "#GOMoon",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 235, 235),
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
    List<String> _items = ['James Web Station', 'Prenuer Station'];
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(10),
      ),

      child: DropdownButton<String>(
        items: _items.map((e) {
          return DropdownMenuItem<String>(child: Text(e), value: e);
        }).toList(),
        underline: Container(),
        dropdownColor: Color.fromRGBO(255, 255, 255, 1),
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        onChanged: (_) {},
      ),
    );
  }
}
