import 'package:flutter/material.dart';

import 'cloud_painter.dart';


class Clouds extends AnimatedWidget {
  final bool isRaining;

  const Clouds({
    Key? key,
    required Animation<Color> animation,
    this.isRaining = false,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<Color> animation = listenable as Animation<Color>;

    var screenSize = MediaQuery.of(context).size;
    var paintBrush = Paint()
      ..color = animation.value
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    return SizedBox(
      height: 300.0,
      child: CustomPaint(
        size: screenSize,
        painter: CloudPainter(
          cloudPaint: paintBrush,
          isRaining: isRaining,
        ),
      ),
    );
  }
}

