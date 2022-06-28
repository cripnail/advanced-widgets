import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({Key? key, required this.onChange, required this.value})
      : super(key: key);

  final Function(double) onChange;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 100,
          child: Slider(
            value: value,
            onChanged: (value) => onChange(value),
            min: 0,
            max: 10,
            divisions: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.green[100],
            label: value.round().toString(),
          )),
    );
  }
}
