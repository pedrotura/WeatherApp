import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/pages/homepage/home_page.dart';
import 'package:weather_app/pages/weather/weather_page.dart';
import 'package:weather_app/providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeatherApp',
      themeMode: Provider.of<ThemeProvider>(context).isDarkThemeActive ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true).copyWith( 
        primaryColor: lightThemeBackgroundColor,
        scaffoldBackgroundColor: lightThemeBackgroundColor,
        hoverColor: lightThemeBackgroundColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: lightThemeBackgroundColor,
          titleTextStyle: addLocationTitleTextStyle
        ),
        inputDecorationTheme: InputDecorationTheme().copyWith(
          prefixIconColor: primaryGrayColor,
        ),
        textTheme: Typography().white.apply(fontFamily: 'Roboto'),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
        primaryColor: darkThemeBackgroundColor,
        scaffoldBackgroundColor: darkThemeBackgroundColor,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: darkThemeBackgroundColor,
          titleTextStyle: addLocationTitleTextStyle
        ),
        textTheme: Typography().white.apply(fontFamily: 'Roboto'),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/weather': (context) => const WeatherPage(),
      },
    );
  }
}

