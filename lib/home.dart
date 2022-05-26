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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.LIGHT);
                  },
                  child: const Text("Light!"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.DARK);
                  },
                  child: const Text("Dark!"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.DARKER);
                  },
                  child: const Text("Darker!"),
                ),
                const Divider(height: 100,),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  color: Theme.of(context).primaryColor,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ),
    );
  }
}