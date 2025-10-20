import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

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
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [_pagetitle(), _bookRideWidget()],
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
    return CustomDropdownButtonClass(
      values: ['James Web Station', 'Prenuer Station'],
      width: _deviceWidth,
    );
  }

  Widget _travellerInfoWiget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownButtonClass(
          values: ['Economy', 'Bussiness', 'First', 'Private'],
          width: _deviceWidth,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_destinationDropDownWidget(), _travellerInfoWiget()],
      ),
    );
  }
}
