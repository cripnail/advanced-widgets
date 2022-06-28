import 'package:flutter/material.dart';

import '../clouds/clouds_background.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  final double value = 0;

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
              if (value <= 0.2 && value > 0)
                const Hero(tag: 'sun-to-rain', child: Text('Sunny,')),
              if (value <= 0.8 && value > 0.2)
                const Hero(tag: 'sun-to-rain', child: Text('Cloudy,')),
              if (value <= 1 && value > 0.8)
                const Hero(tag: 'sun-to-rain', child: Text('Rainy,')),
              const Hero(tag: 'celsius', child: Text('12° C')),
            ]),
          ),
        ),
      ])),
    );
  }
}
