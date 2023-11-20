class WeatherModel {
  String cityName;
  String update;
  double temp;
  double maxTemp;
  double minTemp;
  String condition;

  WeatherModel.name(
      {required this.cityName,
      required this.update,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.condition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel.name(
      cityName: json['location']['name'],
      update: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      condition: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
