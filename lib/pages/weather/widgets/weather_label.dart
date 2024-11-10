import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/providers/theme_provider.dart';

class WeatherLabel extends StatelessWidget {
  const WeatherLabel({super.key, required this.place});

  final SimplifiedPlace place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, top: 0, right: 16.0, bottom: 16.0),
      width: 343.0,
      height: 76.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Provider.of<ThemeProvider>(context).isDarkThemeActive ? darkThemeLabelColor : lightThemeLabelColor
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 140.0,
              child: Text(
                place.city,
                style: Provider.of<ThemeProvider>(context).isDarkThemeActive
                      ? leadingLabelTextStyle.copyWith(
                          color: lightThemeLabelColor
                        )
                      : leadingLabelTextStyle
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Text(
                place.temperature,
                style: Provider.of<ThemeProvider>(context).isDarkThemeActive
                      ? temperatureLabelTextStyle.copyWith(
                          color: lightThemeBackgroundColor
                        )
                      : temperatureLabelTextStyle
              ),
            ),
            const Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}