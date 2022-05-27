import 'package:adv_widgets/custom_theme.dart';
import 'package:adv_widgets/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Homepage"),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.lightPurpleAmber);
            },
            backgroundColor: Colors.purple,
            focusColor: Colors.blue,
            foregroundColor: Colors.amber,
            hoverColor: Colors.green,
            splashColor: Colors.tealAccent,
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.lightIndigoPink);
            },
            backgroundColor: Colors.indigo,
            focusColor: Colors.blueAccent,
            foregroundColor: Colors.pink,
            hoverColor: Colors.greenAccent,
            splashColor: Colors.teal,
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.darkPinkBlueGrey);
            },
            backgroundColor: Colors.pink,
            focusColor: const Color(0xFF42A5F5),
            foregroundColor: Colors.blueGrey,
            hoverColor: const Color(0xff123456),
            splashColor: const Color(0xffb74093),
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.darkPurpleGreen);
            },
            backgroundColor: Colors.purple,
            focusColor: const Color(0x4C68AFFF),
            foregroundColor: Colors.green,
            hoverColor: const Color(0x2A542DFF),
            splashColor: const Color(0xD53CF0FF),
          ),
        ],
      ), // This trailing comma
    );
  }
}
