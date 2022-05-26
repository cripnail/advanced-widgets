import 'package:adv_widgets/custom_theme.dart';
import 'package:adv_widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:adv_widgets/themes.dart';

void main() {
  runApp(
    const CustomTheme(
      initialThemeKey: MyThemeKeys.LIGHT,
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
      theme: CustomTheme.of(context),
      home: const HomeScreen(),
    );
  }
}