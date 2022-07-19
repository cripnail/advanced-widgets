import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  final double value = 0;

  String weatherText(double value) {
    if (value <= 0.2 && value > 0) {
      return 'Sunny, \n12° С';
    }
    if (value <= 0.8 && value > 0.2) {
      return 'Sunny, \n12° С';
    }
    if (value <= 1 && value > 0.8) {
      return 'Sunny, \n12° С';
    }
    return '';
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
                tag: 'imageHero',
                child: Clouds(value: value),
              ),
            ]),
          ),
        ),
      ])),
    );
  }
}
