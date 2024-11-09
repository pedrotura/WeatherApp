import 'package:flutter/material.dart';
import 'package:weather_app/common/utils.dart';
import 'package:weather_app/pages/homepage/widgets/bottom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: purpleGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomPaint(
          painter: PurplePainter(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/2.png'),
                const Row(
                  children: [
                    Text('Weather', style: titleTextStyle),
                    SizedBox(width: 80.0)
                  ]
                ),
                const Row(
                  children: [
                    Text('Forecast App', style: subtitleTextStyle),
                    SizedBox(width: 20.0)
                  ]
                ),
                Container(
                  margin: const EdgeInsets.only(top: 23.0),
                  child: const Text('A simple weather forecast application created for checking all sorts of statistics.', style: descriptionTextStyle, textAlign: TextAlign.justify),
                ),
                const BottomButton()
              ]
            )
          )
        )
      )
    );
  }
}

class PurplePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    Paint paint = Paint();

    Path circlePath = Path();

    circlePath.moveTo(0, 0.7 * height);
    circlePath.quadraticBezierTo(0.5 * width, 0.56 * height, width, 0.7 * height);
    circlePath.addRect(Rect.fromLTRB(0, 0.7 * height, width, height));

    paint.color = purpleLabelColor;
    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}