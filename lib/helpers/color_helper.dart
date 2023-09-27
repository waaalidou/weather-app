import 'package:flutter/material.dart';

class WeatherColorHelper {
  MaterialColor getThemeColor(String? condition) {
    if(condition == null) {
      return Colors.blue;
    }
    switch (condition) {
      case 'Sunny':
        return Colors.orange;
      case 'Partly cloudy':
        return Colors.blue;
      case 'Cloudy':
      case 'Overcast':
      case 'Mist':
        return Colors.grey;
      case 'Patchy rain possible':
      case 'Patchy snow possible':
      case 'Patchy sleet possible':
      case 'Patchy freezing drizzle possible':
      case 'Thundery outbreaks possible':
        return Colors.lightBlue;
      case 'Blowing snow':
      case 'Blizzard':
        return Colors.blueGrey;
      case 'Fog':
      case 'Freezing fog':
        return Colors.grey;
      case 'Patchy light drizzle':
      case 'Light drizzle':
        return Colors.blueGrey;
      case 'Freezing drizzle':
      case 'Heavy freezing drizzle':
      case 'Patchy light rain':
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
        return Colors.blue;
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
      case 'Light sleet':
      case 'Moderate or heavy sleet':
        return Colors.lightBlue;
      case 'Patchy light snow':
      case 'Light snow':
      case 'Patchy moderate snow':
      case 'Moderate snow':
      case 'Patchy heavy snow':
      case 'Heavy snow':
        return Colors.grey;
      case 'Ice pellets':
        return Colors.grey;
      case 'Light rain shower':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
        return Colors.blue;
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
      case 'Light snow showers':
      case 'Moderate or heavy snow showers':
        return Colors.grey;
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
        return Colors.grey;
      case 'Patchy light rain with thunder':
      case 'Moderate or heavy rain with thunder':
      case 'Patchy light snow with thunder':
      case 'Moderate or heavy snow with thunder':
        return Colors.yellow;
      default:
        return Colors.grey; // Default color for unknown conditions
    }
  }
}
