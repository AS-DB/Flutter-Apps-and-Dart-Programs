import 'package:flutter/material.dart';

class CustomDropdownButtonClass extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: _deviceWidth*0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1),
        borderRadius: BorderRadius.circular(10),
      ),

      child: DropdownButton<String>(
        value: values.first,
        items: values.map((e) {
          return DropdownMenuItem<String>(child: Text(e), value: e);
        }).toList(),
        //underline: Container(),
        dropdownColor: Color.fromRGBO(234, 234, 234, 1),
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        onChanged: (_) {},
      ),
    );
  }
}
