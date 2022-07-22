import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.value}) : super(key: key);
  final double value;

  String weatherText(double value) {
    if (value < 3 && value >= 0) {
      return 'Sunny, \n24° С';
    }
    if (value < 5 && value >= 3) {
      return 'Sunny, \n12° С';
    }
    if (value <= 10 && value >= 5) {
      return 'Sunny, \n1° С';
    }
    return 'Not existing value';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Center(
            child: Column(children: [
              Hero(
                tag: 'cloud',
                child: Clouds(value: value),
              ),
              Text(weatherText(value),
                  style: const TextStyle(fontSize: 55),
                  textDirection: TextDirection.ltr),
            ]),
          ),
        ),
      ])),
    );
  }
}
