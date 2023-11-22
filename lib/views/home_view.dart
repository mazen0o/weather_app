import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/views/search_view.dart';

import '../cubits/get_weather_cubit/get_weather_states.dart';
import '../models/weather_model.dart';
import '../widgets/no_weather_info.dart';
import '../widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) {
                  return SearchView();
                }));
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit,WeatherState>(
      builder: (context,state){
        if(state is WeatherLoadedState){
          return WeatherInfo();
        }else if(state is InitialNoWeatherState){
          return NoWeatherInfo();
        }else {
          return Text("Ops there was error");
        }
      },


      ),
    );
  }
}


