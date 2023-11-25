import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var weatherModel =BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            getColorTheme(weatherModel.condition),
            getColorTheme(weatherModel.condition)[300]!,
            getColorTheme(weatherModel.condition)[50]!,
          ],
            begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
           weatherModel.cityName ,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "updated at : ${weatherModel.update.hour} :${weatherModel.update.minute} ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
               "https:${weatherModel.image}"
              ),
              Text(
                "${weatherModel.temp.round()}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Column(
                children: [
                  Text("maxTemp:${weatherModel.maxTemp.round()}"),
                  Text("minTemp:${weatherModel.minTemp.round()}"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            weatherModel.condition,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

