import 'package:flutter/material.dart';

enum MyThemeKeys {
  lightPurpleAmber,
  lightIndigoPink,
  darkPinkBlueGrey,
  darkPurpleGreen
}

class MyThemes {
  static final ThemeData lightPurpleAmberTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.purple,
      primarySwatch: Colors.amber,
      iconTheme: const IconThemeData(color: Colors.amber),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.amber, // background (button) color
          onPrimary: Colors.purple, // foreground (text) color
        ),
      ),
      cardTheme: const CardTheme(
        color: Colors.amber,
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: Colors.purple,
        disabledColor: Colors.black38,
        checkmarkColor: Colors.white10,
        brightness: Brightness.light,
        labelStyle: TextStyle(color: Colors.white),
        secondaryLabelStyle: TextStyle(color: Colors.white),
        secondarySelectedColor: Colors.black38,
        selectedColor: Colors.amber,
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Colors.purple,
      ),
      inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
          ),
          focusColor: Colors.amber,
          hintStyle: TextStyle(color: Colors.amber),
          suffixStyle: TextStyle(color: Colors.purple),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.amber,
            ),
          )),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Colors.amber,
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.purple,
        toolbarTextStyle: TextStyle(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.amber,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.purple,
        selectedLabelStyle: TextStyle(
          color: Colors.black54,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black54,
        ),
        selectedItemColor: Colors.amber,
      ),
      textTheme: const TextTheme(
          subtitle1: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          subtitle2: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black54,
          )));

  static final ThemeData lightIndigoPinkTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.indigo,
    primarySwatch: Colors.pink,
    iconTheme: const IconThemeData(color: Colors.pink),
    textTheme: const TextTheme(
        subtitle1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        subtitle2: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w300, color: Colors.black54)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo, // background (button) color
        onPrimary: Colors.pink, // foreground (text) color
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.indigo,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Colors.pink,
      disabledColor: Colors.black54,
      checkmarkColor: Colors.white24,
      brightness: Brightness.light,
      labelStyle: TextStyle(color: Colors.white24),
      secondaryLabelStyle: TextStyle(color: Colors.white24),
      secondarySelectedColor: Colors.black45,
      selectedColor: Colors.indigo,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.pink,
    ),
    inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusColor: Colors.indigo,
        hintStyle: TextStyle(color: Colors.indigo),
        suffixStyle: TextStyle(color: Colors.pink),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.indigo,
          ),
        )),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.indigo,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.pink,
      toolbarTextStyle: TextStyle(color: Colors.black54),
      titleTextStyle: TextStyle(color: Colors.black54),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.indigo,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.pink,
      selectedLabelStyle: TextStyle(
        color: Colors.black54,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black54,
      ),
      selectedItemColor: Colors.indigo,
    ),
  );

  static final ThemeData darkPinkBlueGreyTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    primaryColor: Colors.pink,
    iconTheme: const IconThemeData(color: Colors.blueGrey),
    textTheme: const TextTheme(
        subtitle1: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white24),
        subtitle2: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white24)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey, // background (button) color
        onPrimary: Colors.pink, // foreground (text) color
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.blueGrey,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Colors.pink,
      disabledColor: Colors.black38,
      checkmarkColor: Colors.white30,
      brightness: Brightness.dark,
      labelStyle: TextStyle(color: Colors.white24),
      secondaryLabelStyle: TextStyle(color: Colors.white24),
      secondarySelectedColor: Colors.black38,
      selectedColor: Colors.blueGrey,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.pink,
    ),
    inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
        focusColor: Colors.blueGrey,
        hintStyle: TextStyle(color: Colors.blueGrey),
        suffixStyle: TextStyle(color: Colors.pink),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueGrey,
          ),
        )),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.indigo,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.pink,
      toolbarTextStyle: TextStyle(color: Colors.black38),
      titleTextStyle: TextStyle(color: Colors.black38),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.blueGrey,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.pink,
      selectedLabelStyle: TextStyle(
        color: Colors.black38,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black38,
      ),
      selectedItemColor: Colors.blueGrey,
    ),
  );

  static final ThemeData darkPurpleGreenTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.purple,
    primarySwatch: Colors.green,
    iconTheme: const IconThemeData(color: Colors.green),
    textTheme: const TextTheme(
      subtitle1: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white30),
      subtitle2: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white30),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.purple, // background (button) color
        onPrimary: Colors.green, // foreground (text) color
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.purple,
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Colors.green,
      disabledColor: Colors.black45,
      checkmarkColor: Colors.white30,
      brightness: Brightness.dark,
      labelStyle: TextStyle(color: Colors.white30),
      secondaryLabelStyle: TextStyle(color: Colors.white30),
      secondarySelectedColor: Colors.black45,
      selectedColor: Colors.purple,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.green,
    ),
    inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.purple),
        ),
        focusColor: Colors.purple,
        hintStyle: TextStyle(color: Colors.purple),
        suffixStyle: TextStyle(color: Colors.green),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.purple,
          ),
        )),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.purple,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.pink,
      toolbarTextStyle: TextStyle(color: Colors.black45),
      titleTextStyle: TextStyle(color: Colors.black45),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.purple,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.green,
      selectedLabelStyle: TextStyle(
        color: Colors.black45,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black45,
      ),
      selectedItemColor: Colors.purple,
    ),
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.lightPurpleAmber:
        return lightPurpleAmberTheme;
      case MyThemeKeys.lightIndigoPink:
        return lightIndigoPinkTheme;
      case MyThemeKeys.darkPinkBlueGrey:
        return darkPinkBlueGreyTheme;
      case MyThemeKeys.darkPurpleGreen:
        return darkPurpleGreenTheme;
      default:
        return lightPurpleAmberTheme;
    }
  }
}
