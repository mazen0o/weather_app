import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import '../../services/weather_service.dart';
import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);

  getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
  }
}
