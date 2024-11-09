import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';

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
        color: lightThemeLabelColor
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160.0,
              child: Text(place.city, style: leadingLabelTextStyle),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Text(place.temperature, style: temperatureLabelTextStyle),
            ),
            const Icon(Icons.add)
          ],
        ),
      ),
    );
  }
}