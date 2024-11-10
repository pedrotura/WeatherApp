import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/models/place_model.dart';
import 'package:weather_app/pages/weather/widgets/city_search_bar.dart';
import 'package:weather_app/pages/weather/widgets/weather_label.dart';
import 'package:weather_app/providers/theme_provider.dart';
import 'package:weather_app/services/api_services.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  ApiServices apiServices = ApiServices();
  late Future<List<Place>> placesFuture;
  
  bool _isDarkThemeActive = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      _isDarkThemeActive = Provider.of<ThemeProvider>(context).isDarkThemeActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 23.0),
          child: IconButton(
            iconSize: 21.0,
            icon: Icon(
              Icons.arrow_back_ios,
              color: _isDarkThemeActive ? lightThemeLabelColor : darkThemeBackgroundColor ,
            ),
            onPressed: () => Navigator.pop(context),
            hoverColor: _isDarkThemeActive ? darkThemeBackgroundColor : lightThemeBackgroundColor,
            highlightColor: _isDarkThemeActive ? darkThemeBackgroundColor : lightThemeBackgroundColor,
          ),
        ),
        title: Text(
          'Choose a city',
          style: _isDarkThemeActive
                ? addLocationTitleTextStyle.copyWith(
                    color: lightThemeBackgroundColor
                  )
                : addLocationTitleTextStyle
          ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 23.0),
            child: IconButton(
              onPressed: () {
                final provider = Provider.of<ThemeProvider>(context, listen: false);
                provider.changeAppTheme();
                setState(() {
                  _isDarkThemeActive = provider.isDarkThemeActive;
                });
              },
              iconSize: 21.0,
              icon: _isDarkThemeActive ? Icon(Icons.dark_mode, color: lightThemeLabelColor) : Icon(Icons.light_mode, color: darkThemeBackgroundColor),
              hoverColor: _isDarkThemeActive ? darkThemeBackgroundColor : lightThemeBackgroundColor,
              highlightColor: _isDarkThemeActive ? darkThemeBackgroundColor : lightThemeBackgroundColor,
            ),
          ),
        ],
        toolbarHeight: 92.0,
      ),
      body: Column(
        children: [
          const CitySearchBar(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16.0, top: 28.0, bottom: 20.0),
                child: Text(
                  'My cities',
                  style: _isDarkThemeActive
                        ? addLocationSubtitleTextStyle.copyWith(
                            color: lightThemeLabelColor
                          )
                        : addLocationSubtitleTextStyle
                  ),
              ),
              const SizedBox(width: 200.0),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: places.length,
              itemBuilder: (context, index) {
                return WeatherLabel(place: places[index]);
              }
            ),
          ),
        ],
      ),
    );
  }
}