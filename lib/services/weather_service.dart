import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/models/weather_data.dart';

class WeatherService {
  final String apiKey;
  final String baseUrl = 'https://api.weatherapi.com/v1';

  WeatherService(this.apiKey);

  Future<WeatherData> fetchWeatherData(String cityName) async {
    final apiUrl = '$baseUrl/current.json?key=$apiKey&q=$cityName';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return WeatherData.fromJson(data);
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
