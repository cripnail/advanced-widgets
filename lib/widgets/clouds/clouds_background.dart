import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'cloud_painter.dart';

class Clouds extends StatelessWidget {
  const Clouds({
    Key? key,
    required this.value,
  }) : super(key: key);
  final double value;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var paintBrush = Paint()
      ..color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0)
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round;

    return SizedBox(
      height: 300.0,
      child: CustomPaint(
        size: Size(
            (value * screenSize.width / 10), (value * screenSize.height / 10)),
        painter: CloudPainter(
          cloudPaint: paintBrush,
          isRaining: true,
        ),
      ),
    );
  }
}
