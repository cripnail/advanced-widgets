import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  final bool value = false;
  double val = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 100,
          child: Slider(
            value: val,
            onChanged: (value) {
              setState(() {
                val = value;
              });
            },
            min: 0,
            max: 10,
            divisions: 2,
            activeColor: Colors.green,
            inactiveColor: Colors.green[100],
            label: val.round().toString(),
          )),
    );
  }
}
