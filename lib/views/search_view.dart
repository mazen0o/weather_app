import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search a City",
        ),
      ),
      body:  Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 8.0),
        child:  Center(
          child: TextField(
            onSubmitted: (value)async{
              //log(weatherModel?.cityName ?? "");
              Navigator.pop(context);
            },
            decoration:const InputDecoration(

              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30
              ),
              labelText: "Search",
              hintText: "Enter City Name",
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.black

            ),
          ),
        ),
      ),
    );
  }
}
