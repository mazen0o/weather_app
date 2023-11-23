import 'package:weather_app/models/weather_model.dart';

class WeatherState{}
class InitialNoWeatherState extends WeatherState{}
class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);
}
class WeatherFailureState extends WeatherState{
  final String errorMsg;

  WeatherFailureState(this.errorMsg);
}