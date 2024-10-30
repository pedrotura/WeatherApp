import 'package:flutter/material.dart';
import 'package:weather_app/pages/homepage/home_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherApp',
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage()
      },
    );
  }
}

