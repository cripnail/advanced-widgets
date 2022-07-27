import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';
import '../renderer/inner_shadow.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.value}) : super(key: key);
  final double value;

  String weatherText(double value) {
    if (value < 3 && value >= 0) {
      return 'Sunny, \n24° С';
    }
    if (value < 5 && value >= 3) {
      return 'Cloudy, \n12° С';
    }
    if (value <= 10 && value >= 5) {
      return 'Rainy, \n1° С';
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
              InnerShadow(
                blur: 5,
                color: const Color(0xFF477C70),
                offset: const Offset(5, 5),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFE9EFEC),
                  ),
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(weatherText(value),
                        style: const TextStyle(fontSize: 35),
                        textDirection: TextDirection.ltr),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ])),
    );
  }
}
