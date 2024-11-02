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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(place.city, style: leadingLabelTextStyle),
          Text(place.temperature , style: temperatureLabelTextStyle),
          const Icon(Icons.add)
        ],
      ),
    );
  }
}