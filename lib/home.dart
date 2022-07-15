import 'package:adv_widgets/themes/custom_theme.dart';
import 'package:adv_widgets/themes/themes.dart';
import 'package:adv_widgets/widgets/clouds/clouds_background.dart';
import 'package:adv_widgets/widgets/hero/detail_screen.dart';
import 'package:adv_widgets/widgets/slider/slider.dart';
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
  double currentValue = 0;

  void onSlide(double value) {
    setState(() {
      currentValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'cloud',
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return DetailScreen(
                        value: currentValue,
                      );
                    }),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 80 * currentValue, top: 249, right: 33),
                  // fromLTRB(8, 249, 15, 128),
                  child: SizedBox(
                    width: 100,
                    height: 70,
                    child: Clouds(
                      value: currentValue,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 211,
            ),
            MySlider(onChange: onSlide, value: currentValue)
          ],
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
      ),
    );
  }
}
