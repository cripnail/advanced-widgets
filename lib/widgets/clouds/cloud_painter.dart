import 'package:flutter/material.dart';

class CloudPainter extends CustomPainter {
  final Paint cloudPaint;
  final bool isRaining;

  CloudPainter({required this.cloudPaint, required this.isRaining});

  @override
  void paint(Canvas canvas, Size size) {
    var rectTop = 110.0;
    var rectBottom = rectTop + 40.0;

    var figureLeftEdge = size.width / 4;
    var figureRightEdge = size.width - 90.0;
    var figureCenter = size.width / 2;

    var cloudBaseRect = Rect.fromPoints(
      Offset(figureLeftEdge, rectTop),
      Offset(figureRightEdge, rectBottom),
    );
    var cloudBase = RRect.fromRectAndRadius(
      cloudBaseRect,
      const Radius.circular(10.0),
    );

    canvas.drawCircle(Offset(figureLeftEdge + 5, 100.0), 50.0, cloudPaint);
    canvas.drawCircle(Offset(figureCenter, 70.0), 60.0, cloudPaint);
    canvas.drawCircle(Offset(figureRightEdge, 70.0), 80.0, cloudPaint);

    cloudPaint.strokeWidth = 3.0;
    canvas.drawRRect(cloudBase, cloudPaint);

    if (isRaining) {
      var rainDropLength = 75.0;
      var rainDropOffsetXStart = figureLeftEdge;
      var rainDropOffsetXEnd = rainDropOffsetXStart * 0.8;
      var rainDropOffsetXNext = (figureRightEdge - figureLeftEdge) / 10;
      var rainDropOffsetYStart = rectBottom + 15.0;

      for (var i = 0; i < 10; i++) {
        rainDropOffsetXStart += rainDropOffsetXNext;
        rainDropOffsetXEnd += rainDropOffsetXNext;
        if (i.isEven) {
          rainDropOffsetYStart += 7.0;
        } else {
          rainDropOffsetYStart -= 7.0;
        }
        canvas.drawLine(
            Offset(rainDropOffsetXStart, rainDropOffsetYStart),
            Offset(rainDropOffsetXEnd, rainDropOffsetYStart + rainDropLength),
            cloudPaint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
