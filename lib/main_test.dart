import 'package:flutter_test/flutter_test.dart';
import 'package:weather/services/weather_service.dart';
import 'package:weather/utils/error_handling.dart';

void main() {
  group('Weather Service Tests', () {
    test('Weather Service API Request', () async {
      final apiKey = 'YOUR_API_KEY'; // Replace with your API key
      final weatherService = WeatherService(apiKey);
      final cityName = 'New York'; // Replace with a valid city name

      final weatherData = await weatherService.fetchWeatherData(cityName);

      // Add assertions to verify the weather data
      expect(weatherData.city, isNotNull);
      expect(weatherData.temperature, isNotNull);
      // Add more assertions for other properties
    });

    test('Error Handling Utility Test', () {
      final context = null; // Replace with a valid BuildContext
      final errorMessage = 'Sample Error Message';

      // Test if the error dialog can be displayed
      expect(() => ErrorHandling.showErrorDialog(context, errorMessage),
          returnsNormally);
    });
  });
}
