import 'package:flutter/material.dart';
import 'package:weather/widgets/weather_display.dart';
import 'package:weather/widgets/search_bar.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Column(
        children: [
         SearchBar(), // Implement the search bar widget
          WeatherDisplay(), // Implement the weather display widget
        ],
      ),
    );
  }
}
