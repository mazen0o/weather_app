import 'dart:developer';

import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search a City",
        ),
      ),
      body: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child:  Center(
          child: TextField(
            decoration: InputDecoration(

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
