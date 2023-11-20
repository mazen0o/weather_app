import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

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
      body: WeatherInfo(),
    );
  }
}
