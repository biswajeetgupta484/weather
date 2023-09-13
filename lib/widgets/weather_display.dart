import 'package:flutter/material.dart';
import 'package:weather/models/weather_data.dart';

class WeatherDisplay extends StatelessWidget {
  final WeatherData weatherData; // Pass the weather data here

  WeatherDisplay({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('City: ${weatherData.city}'),
        Text('Temperature: ${weatherData.temperature}'),
        // Display other weather information here
      ],
    );
  }
}
