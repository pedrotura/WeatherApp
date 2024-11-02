import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      decoration: const BoxDecoration(
        gradient: purpleGradient
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/2.png'),
            const Text('WeatherApp', style: titleTextStyle, textAlign: TextAlign.left),
            Container(
              margin: const EdgeInsets.only(top: 23.0),
              child: const Text('A simple weather forecast application created for checking all sorts of statistics.', style: descriptionTextStyle, textAlign: TextAlign.justify),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/weather');
              },
              child: Container(
                margin: const EdgeInsets.only(top: 42.0),
                width: 220.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: yellowColor
                ),
                child: const Center(
                  child: Text('Get started', style: buttonTextStyle)
                )
              )
            )
          ]
        )
      )
    );
  }
}