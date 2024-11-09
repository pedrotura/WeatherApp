import 'package:flutter/material.dart';

//paleta de cores para o tema claro
const lightThemeBackgroundColor = Color(0xFFF5F4FF);
const lightThemeLabelColor = Color(0xFFFFFFFF);

//paleta de cores para o tema escuro
const darkThemeBackgroundColor = Color(0xFF272727);
const darkThemeLabelColor = Color(0xFF575757);

//cores adicionais
const secondaryGrayColor = Color(0xFF9F9F9F);
const primaryGrayColor = Color(0xFFD8D8D8);
const purpleBackgroundColor = Color(0xFF211772);
const purpleLabelColor = Color(0xFF342798);
const purpleTextColor = Color(0xFF9F93FF);
const yellowColor = Color(0xFFFFBA25);

//gradientes
const purpleGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF2D4EB9), Color(0xFF211772)]
);

const titleTextStyle = TextStyle(
  fontSize: 44.0,
  fontWeight: FontWeight.w500,
  color: yellowColor
);

const subtitleTextStyle = TextStyle(
  fontSize: 36.0,
  fontWeight: FontWeight.w500,
  color: lightThemeLabelColor
);

const descriptionTextStyle = TextStyle(
  fontSize: 12.0,
  fontWeight: FontWeight.w300,
  height: 1.7,
  color: lightThemeLabelColor
);

const buttonTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: lightThemeBackgroundColor
);

const addLocationTitleTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w700,
  color: purpleBackgroundColor
);

const addLocationSubtitleTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
  color: purpleBackgroundColor
);

const hintTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  color: primaryGrayColor
);

const leadingLabelTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
  color: darkThemeLabelColor
);

const temperatureLabelTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w500,
  color: purpleBackgroundColor
);

//chave da API de pesquisa
const apiKey = '6722a4fa6bfa7223818895fzyad900a';

//lista provisória
class SimplifiedPlace {
  String city;
  String temperature;

  SimplifiedPlace({
    required this.city,
    required this.temperature
  });
}

List<SimplifiedPlace> places = [
  SimplifiedPlace(city: 'New Mexico, USA', temperature: '28°'),
  SimplifiedPlace(city: 'Paris, France', temperature: '24°'),
  SimplifiedPlace(city: 'Barcelona, Spain', temperature: '32°')
];