import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String _baseUrl = 'https://api.weatherapi.com/v1';
  final String _apiKey = 'b4db6dcaff68473f897175333232509';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String city}) async {
    try {
      Response response = await dio.get(
        '$_baseUrl/forecast.json?key=$_apiKey&q=$city&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final errorMessage = e.response?.data['error']['message'] ?? 'Oops there was unexpected error!';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops there was unexpected error!, try later');
    }
  }
}
