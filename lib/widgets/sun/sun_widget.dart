
import 'dart:math';

import 'package:flutter/material.dart';

class SunWidget extends StatelessWidget {
  const SunWidget({Key? key, })
      : super(key: key, );
  //
  // Animation<Offset> get _animation => listenable as Animation<Offset>;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final minSize = min(constraints.maxWidth, constraints.maxHeight);
      final sunSize = minSize / 2.0;

      return Container(
        width: sunSize,
        height: sunSize,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amberAccent,
            border: Border.all(color: Colors.amber, width: 1),
            boxShadow: [
              const BoxShadow(color: Colors.black87, blurRadius: 4),
              BoxShadow(
                  color: Colors.amberAccent,
                  spreadRadius: sunSize * 0.5,
                  blurRadius: sunSize * 4)
            ]),
      );
    });
  }
}
