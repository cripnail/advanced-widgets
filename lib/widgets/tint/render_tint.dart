import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderTint extends RenderProxyBox {
  RenderTint({
    Color color = Colors.transparent,
    RenderBox? child,
  })  : _color = color,
        super(child);

  Color get color => _color;
  Color _color;

  set color(Color color) {
    if (_color == color) return;
    _color = color;
    markNeedsPaint();
    markNeedsSemanticsUpdate();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      context.paintChild(child!, offset);
    }
    context.canvas.drawColor(color, BlendMode.srcOver);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
  }
}
