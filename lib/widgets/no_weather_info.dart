import 'package:flutter/material.dart';

class NoWeatherInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "there is no weather , start searching now",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
