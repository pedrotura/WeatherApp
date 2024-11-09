import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}