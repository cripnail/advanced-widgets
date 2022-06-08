import 'package:adv_widgets/themes/custom_theme.dart';
import 'package:adv_widgets/home.dart';
import 'package:adv_widgets/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyCustomTheme(
      initialThemeKey: MyThemeKeys.lightPurpleAmber,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic themes demo',
      theme: MyCustomTheme.of(context),
      home: const HomeScreen(),
    );
  }
}