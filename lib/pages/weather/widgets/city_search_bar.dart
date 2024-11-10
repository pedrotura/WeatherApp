import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/providers/theme_provider.dart';

class CitySearchBar extends StatefulWidget {
  const CitySearchBar({super.key});

  @override
  State<CitySearchBar> createState() => _CitySearchBarState();
}

class _CitySearchBarState extends State<CitySearchBar> {

  final cityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
    return Form(
      key: _formKey,
      child: buildCity(),
    );
  }

  Widget buildCity() => Container(
    margin: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0),
    width: 343.0,
    height: 48.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: _isDarkThemeActive ? darkThemeLabelColor : lightThemeLabelColor,
    ),
    child: TextFormField(
      controller: cityController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Icon(Icons.search, size: 24.0)
        ),
        prefixIconColor: _isDarkThemeActive ? lightThemeLabelTextColor : primaryGrayColor,
        hintText: 'Search for a new city...',
        hintStyle: _isDarkThemeActive ? hintTextStyle.copyWith(color: lightThemeLabelTextColor) : hintTextStyle,
        isDense: true,
        contentPadding: EdgeInsets.only(top: 14.0),
        border: InputBorder.none,
      ),
    ),
  );
}