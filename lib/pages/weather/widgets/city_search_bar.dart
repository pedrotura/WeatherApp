import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';

class CitySearchBar extends StatefulWidget {
  const CitySearchBar({super.key});

  @override
  State<CitySearchBar> createState() => _CitySearchBarState();
}

class _CitySearchBarState extends State<CitySearchBar> {

  final cityController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: buildCity(),
    );
  }

  Widget buildCity() => Container(
    margin: const EdgeInsets.symmetric(horizontal: 16.0),
    width: 343.0,
    height: 48.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: lightThemeLabelColor
    ),
    child: TextFormField(
      controller: cityController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search, size: 21.0),
        prefixIconColor: primaryGrayColor,
        hintText: 'Search a new city...',
        hintStyle: hintTextStyle,
        border: InputBorder.none,
      )
    ),
  );

}