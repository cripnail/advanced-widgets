// import 'package:flutter/material.dart';
//
// import '../controllers/forecast_controller.dart';
// import '../models/src/forecast_animation_state.dart';
// import '../models/src/weather.dart';
// import '../widgets/clouds/clouds_background.dart';
// import '../widgets/sun/sun_background.dart';
//
// class ForecastPage extends StatefulWidget {
//   const ForecastPage({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   ForecastPageState createState() => ForecastPageState();
// }
//
// class ForecastPageState extends State<ForecastPage>
//     with TickerProviderStateMixin {
//   int activeTabIndex = 0;
//   late ForecastController _forecastController;
//   late AnimationController _animationController;
//   late AnimationController _weatherConditionAnimationController;
//   late ColorTween _colorTween;
//   late ColorTween _cloudColorTween;
//   late Tween<Offset> _positionOffsetTween;
//   late TweenSequence<Offset> _cloudPositionOffsetTween;
//   late ForecastAnimationState currentAnimationState;
//   late ForecastAnimationState nextAnimationState;
//   late Offset verticalDragStart;
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     _weatherConditionAnimationController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final isRaining =
//         _forecastController.selectedHourlyTemperature.description ==
//             WeatherDescription.rain;
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 32.0),
//         child: Stack(
//           children: <Widget>[
//             SlideTransition(
//               position: _positionOffsetTween.animate(
//                 _animationController.drive(
//                   CurveTween(curve: Curves.bounceOut),
//                 ),
//               ),
//               child: Sun(
//                 animation: _colorTween.animate(_animationController)
//                     as Animation<Color>,
//               ),
//             ),
//             SlideTransition(
//               position: _cloudPositionOffsetTween.animate(
//                 _weatherConditionAnimationController.drive(
//                   CurveTween(curve: Curves.bounceOut),
//                 ),
//               ),
//               child: Clouds(
//                 isRaining: isRaining,
//                 animation: _cloudColorTween.animate(_animationController)
//                     as Animation<Color>,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
