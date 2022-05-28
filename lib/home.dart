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
            backgroundColor: Colors.amber,
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.lightIndigoPink);
            },
            backgroundColor: Colors.pink,
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.darkPinkBlueGrey);
            },
            backgroundColor: Colors.blueGrey,
          ),
          FloatingActionButton(
            onPressed: () {
              _changeTheme(context, MyThemeKeys.darkPurpleGreen);
            },
            backgroundColor: Colors.green,
          ),
        ],
      ), // This trailing comma
    );
  }
}
