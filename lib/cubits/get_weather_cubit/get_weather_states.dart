import 'package:weather_app/models/weather_model.dart';

abstract class WeatherDataState {}

class WeatherInitialState extends WeatherDataState {}

class WeatherLoadedState extends WeatherDataState {
  final WeatherModel weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFailureState extends WeatherDataState {}
