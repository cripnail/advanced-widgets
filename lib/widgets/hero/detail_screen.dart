import 'package:adv_widgets/widgets/tint/tint.dart';
import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, this.value = 0}) : super(key: key);
  final double value;

  String? weatherText(double value) {
    if (value <= 0.2 && value >= 0) {
      return myMap[1];
    }
    if (value <= 0.8 && value > 0.2) {
      return myMap[2];
    }
    if (value <= 1 && value > 0.8) {
      return myMap[3];
    }
    return null;
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
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Column(children: [
                  Hero(
                      tag: 'cloud',
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Clouds(value: value))),
                  Tint(
                    color: const Color.fromARGB(40, 255, 84, 6),
                    child: Text(weatherText(value)!,
                        style: const TextStyle(fontSize: 95),
                        textDirection: TextDirection.ltr),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
