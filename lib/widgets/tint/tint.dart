import 'package:adv_widgets/widgets/tint/render_tint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Tint extends SingleChildRenderObjectWidget {
  const Tint({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(key: key, child: child);

  final Color color;

  @override
  RenderTint createRenderObject(BuildContext context) {
    return RenderTint(
      color: color,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderTint renderObject) {
    renderObject.color = color;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('color', color));
  }
}
