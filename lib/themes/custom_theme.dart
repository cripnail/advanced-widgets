import 'package:adv_widgets/themes/themes.dart';
import 'package:flutter/material.dart';

class _CustomTheme extends InheritedWidget {
  final MyCustomThemeState data;

  const _CustomTheme({
    required this.data,
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_CustomTheme oldWidget) {
    return true;
  }
}

class MyCustomTheme extends StatefulWidget {
  final Widget child;
  final MyThemeKeys initialThemeKey;

  const MyCustomTheme({
    Key? key,
    required this.initialThemeKey,
    required this.child,
  }) : super(key: key);

  @override
  MyCustomThemeState createState() => MyCustomThemeState();

  static ThemeData of(BuildContext context) {
    _CustomTheme inherited =
        (context.dependOnInheritedWidgetOfExactType<_CustomTheme>()!);
    return inherited.data.theme;
  }

  static MyCustomThemeState instanceOf(BuildContext context) {
    _CustomTheme inherited =
        (context.dependOnInheritedWidgetOfExactType<_CustomTheme>()!);
    return inherited.data;
  }
}

class MyCustomThemeState extends State<MyCustomTheme> {
  late ThemeData _theme;

  ThemeData get theme => _theme;

  @override
  void initState() {
    _theme = MyThemes.getThemeFromKey(widget.initialThemeKey);
    super.initState();
  }

  void changeTheme(MyThemeKeys themeKey) {
    setState(() {
      _theme = MyThemes.getThemeFromKey(themeKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return _CustomTheme(
      data: this,
      child: widget.child,
    );
  }
}
