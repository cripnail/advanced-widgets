import 'package:adv_widgets/themes/custom_theme.dart';
import 'package:adv_widgets/themes/themes.dart';
import 'package:adv_widgets/widgets/clouds/clouds_background.dart';
import 'package:adv_widgets/widgets/hero/detail_screen.dart';
import 'package:adv_widgets/widgets/slider/slider.dart';
import 'package:adv_widgets/widgets/sun/sun_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    MyCustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  double value = 0;

  void onSlide(double size) {
    setState(() {
      value = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Homepage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: Hero(
              tag: 'cloud',
              child: Stack(children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(148.0, 16, 16, 80),
                  child: SunWidget(),
                ),
                Clouds(value: value),
              ]),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return DetailScreen(value: value);
              }));
            },
          ),
          MySlider(onChange: onSlide, value: value)
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: () {
              _changeTheme(context, MyThemeKeys.lightPurpleAmber);
            },
            backgroundColor: Colors.amber,
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              _changeTheme(context, MyThemeKeys.lightIndigoPink);
            },
            backgroundColor: Colors.pink,
          ),
          FloatingActionButton(
            heroTag: "btn3",
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
