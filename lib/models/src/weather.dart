class Forecast {
  List<ForecastDay> days;

  Forecast({required this.days});

  static ForecastDay getSelectedDayForecast(
      Forecast forecast, DateTime selectedDate) {
    return forecast.days
        .firstWhere((ForecastDay d) => d.date.day == selectedDate.day);
  }
}

class ForecastDay {
  List<Weather> hourlyWeather;
  DateTime date;
  int min;
  int max;

  static Weather getWeatherForHour(ForecastDay self, int hour) {
    if (hour == 0) {
      // DateTime hours run 1,2,3...22,23,0
      // 0 == midnight
      return self.hourlyWeather.last;
    }
    return self.hourlyWeather
        .firstWhere((Weather w) => w.dateTime.hour >= hour);
  }

  ForecastDay(
      {required this.hourlyWeather,
      required this.date,
      required this.min,
      required this.max});
}

class Weather {
  DateTime dateTime;
  WeatherDescription description;
  int cloudCoveragePercentage;
  String weatherIcon;

  Weather(
      {required this.dateTime,
      required this.description,
      required this.cloudCoveragePercentage,
      required this.weatherIcon});

  static Map<WeatherDescription, String> displayValues = {
    WeatherDescription.clear: "Clear",
    WeatherDescription.cloudy: "Cloudy",
    WeatherDescription.rain: "Rain",
    WeatherDescription.sunny: "Sunny",
  };
}

enum WeatherDescription { clear, cloudy, sunny, rain }
