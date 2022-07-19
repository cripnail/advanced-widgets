import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);
  final double value = 0;

  String weatherText(double value) {
    if (value <= 0.5 && value > 0) {
      return myMap[1] ?? '';
    }
    if (value <= 0.8 && value > 0.5) {
      return myMap[2] ?? '';
    }
    if (value <= 1 && value > 0.8) {
      return myMap[3] ?? '';
    }
    return '';
  }

  final Map<int, String> myMap = {
    1: "Sunny, \n12° С",
    2: "Cloudy, \n12° С",
    3: "Rainy, \n12° С",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Center(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(children: [
              Hero(
                tag: 'cloud',
                child: Clouds(value: value),
              ),
              Text(weatherText(value),
                  style: const TextStyle(fontSize: 95),
                  textDirection: TextDirection.ltr),
            ]),
          ),
        ]),
      )),
    );
  }
}
