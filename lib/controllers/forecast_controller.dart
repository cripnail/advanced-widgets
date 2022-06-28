import 'package:adv_widgets/models/src/weather.dart';

class ForecastController {
  late Forecast forecast;
  late ForecastDay selectedDay;
  late Weather selectedHourlyTemperature;

  init() {
    selectedHourlyTemperature = ForecastDay.getWeatherForHour(
      selectedDay,
      DateTime.now().toLocal().hour,
    );
  }
}
