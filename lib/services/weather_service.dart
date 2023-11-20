import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String url = "https://api.weatherapi.com/v1";
  final String apiKey = "292e81e044944c4488484732232011";

  WeatherService(this.dio);

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get("$url/forecast.json?key=$apiKey&q=$cityName&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMsg = e.response?.data['error']['message'] ??
          "Oops there was error , try later again";
      throw Exception(errorMsg);
    } catch (e) {
      throw Exception("Oops there was error , try later again");
    }
  }
}
