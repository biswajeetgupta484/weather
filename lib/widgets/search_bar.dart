import 'package:flutter/material.dart';
import 'package:weather/services/weather_service.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();

  // void _searchWeather() {
  //   final cityName = _controller.text;
  //   WeatherService().fetchWeatherData(cityName); // Implement this method
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(labelText: 'Search for a city'),
        ),
        // ElevatedButton(
        //   onPressed: _searchWeather,
        //   child: Text('Search'),
        // ),
      ],
    );
  }
}
