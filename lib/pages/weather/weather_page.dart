import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/models/place_model.dart';
import 'package:weather_app/pages/weather/widgets/city_search_bar.dart';
import 'package:weather_app/pages/weather/widgets/weather_label.dart';
import 'package:weather_app/services/api_services.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  ApiServices apiServices = ApiServices();
  late Future<List<Place>> placesFuture;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightThemeBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightThemeBackgroundColor,
        leading: Container(
          margin: const EdgeInsets.only(left: 23.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: darkThemeBackgroundColor, size: 21.0),
            onPressed: () => Navigator.pop(context),
            hoverColor: lightThemeBackgroundColor
          ),
        ),
        title: const Text('Choose a city', style: addLocationTitleTextStyle),
        centerTitle: true,
        toolbarHeight: 108.0,
      ),
      body: Column(
        children: [
          const CitySearchBar(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16.0, top: 28.0, bottom: 20.0),
                child: const Text('My cities', style: addLocationSubtitleTextStyle)
              ),
              const SizedBox(width: 200.0)
            ]
          ),
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return WeatherLabel(place: places[index]);
              }
            ),
          )
        ]
      )
    );
  }
}