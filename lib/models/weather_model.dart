import 'dart:convert';

class Weather {
  double latitude;
  double longitude;
  double generationtimeMs;
  int utcOffsetSeconds;
  String timezone;
  String timezoneAbbreviation;
  double elevation;
  HourlyUnits hourlyUnits;
  Hourly hourly;
  DailyUnits dailyUnits;
  Daily daily;

  Weather({
    required this.latitude,
    required this.longitude,
    required this.generationtimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.hourlyUnits,
    required this.hourly,
    required this.dailyUnits,
    required this.daily
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    latitude: json['latitude'],
    longitude: json['longitude'],
    generationtimeMs: json['generationtime_ms'],
    utcOffsetSeconds: json['utc_offset_seconds'],
    timezone: json['timezone'],
    timezoneAbbreviation: json['timezone_abbreviation'],
    elevation: json['elevation'],
    hourlyUnits: HourlyUnits.fromJson(json['hourly_units']),
    hourly: Hourly.fromJson(json['hourly']),
    dailyUnits: DailyUnits.fromJson(json['daily_units']),
    daily: Daily.fromJson(json['daily'])
  );
}

class HourlyUnits {
  String time;
  String temperature2m;
  String relativeHumidity2m;
  String rain;
  String weatherCode;
  String visibility;

  HourlyUnits({
    required this.time,
    required this.temperature2m,
    required this.relativeHumidity2m,
    required this.rain,
    required this.weatherCode,
    required this.visibility
  });

  factory HourlyUnits.fromRawJson(String str) => HourlyUnits.fromJson(json.decode(str));

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => HourlyUnits(
    time: json['time'],
    temperature2m: json['temperature_2m'],
    relativeHumidity2m: json['relative_humidity_2m'],
    rain: json['rain'],
    weatherCode: json['weather_code'],
    visibility: json['visibility']
  );
}

class Hourly {
  List<String> time;
  List<int> temperature2m;
  List<int> relativeHumidity2m;
  List<int> rain;
  List<int> weatherCode;
  List<int> visibility;

  Hourly({
    required this.time,
    required this.temperature2m,
    required this.relativeHumidity2m,
    required this.rain,
    required this.weatherCode,
    required this.visibility
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
    time: json['time'].cast<String>(),
    temperature2m: json['temperature_2m'].cast<int>(),
    relativeHumidity2m: json['relative_humidity_2m'].cast<int>(),
    rain: json['rain'].cast<int>(),
    weatherCode: json['weather_code'].cast<int>(),
    visibility: json['visibility'].cast<int>()
  );
}

class DailyUnits {
  String time;
  String weatherCode;
  String temperature2mMax;
  String temperature2mMin;

  DailyUnits({
    required this.time,
    required this.weatherCode,
    required this.temperature2mMax,
    required this.temperature2mMin
  });

  factory DailyUnits.fromJson(Map<String, dynamic> json) => DailyUnits(
    time: json['time'],
    weatherCode: json['weather_code'],
    temperature2mMax: json['temperature_2m_max'],
    temperature2mMin: json['temperature_2m_min']
  );
}

class Daily {
  List<String> time;
  List<int> weatherCode;
  List<double> temperature2mMax;
  List<double> temperature2mMin;

  Daily({
    required this.time,
    required this.weatherCode,
    required this.temperature2mMax,
    required this.temperature2mMin
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
    time: json['time'].cast<String>(),
    weatherCode: json['weather_code'].cast<int>(),
    temperature2mMax: json['temperature_2m_max'].cast<double>(),
    temperature2mMin: json['temperature_2m_min'].cast<double>()
  );
}