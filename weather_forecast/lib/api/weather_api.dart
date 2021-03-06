import 'dart:convert';
import 'dart:developer';
import 'package:weather_forecast/screens/weather_forecast_screen.dart';
import 'package:weather_forecast/models/weather_forecast_daily.dart';
import 'package:weather_forecast/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'package:weather_forecast/utilities/location.dart';

class WeatherApi {
  Future<WeatherForecast> fetchWeatherForecast(
      {var cityName, dynamic isCity}) async {
    Location location = Location();
    await location.getCurrentLocation();

    Map<String, dynamic> parameters;

    if (isCity == true) {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'q': cityName,
      };
      parameters = queryParameters;
    } else {
      var queryParameters = {
        'APPID': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'lat': location.longitude.toString(),
        'lon': location.longitude.toString(),
      };
      parameters = queryParameters;
    }

    var uri = Uri.https(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, parameters);

    log("reauest: ${uri.toString()}");

    var response = await http.get(uri);

    print('response: ${response.body}');

    if (response.statusCode == 200) {
      return WeatherForecast.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error response');
    }
  }
}
