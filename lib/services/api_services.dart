import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/models/place_model.dart';
import 'package:weather_app/models/weather_model.dart';

const geocodeBaseUrl = 'https://geocode.maps.co/';
const geocodeKey = '&api_key=$apiKey';

const openmeteoBaseUrl = 'https://api.open-meteo.com/v1/';

class ApiServices {
  Future<List<Place>> getCitiesByName(String name) async {
    var endpoint = 'search?q=$name';
    final url = '$geocodeBaseUrl$endpoint$geocodeKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<Place> places = [];
      for (int i = 0; i < response.body.length; i++) {
        places.add(Place.fromJson(jsonDecode(response.body[i])));
      }
      return places;
    }
    throw Exception('Failed to load coordinates.');
  }

  Future<Weather> getWeatherConditions(double latitude, double longitude) async {
    var endpoint = 'forecast?latitude=$latitude&longitude=$longitude&hourly=temperature_2m,relative_humidity_2m,rain,weather_code,visibility&daily=weather_code,temperature_2m_max,temperature_2m_min';
    final url = '$openmeteoBaseUrl$endpoint';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to load weather conditions.');
  }
}