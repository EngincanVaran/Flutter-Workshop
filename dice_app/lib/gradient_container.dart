import 'package:flutter/material.dart';

const Alignment startAlignment = Alignment.topRight;
const Alignment endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.gradientColors});

  GradientContainer.purple({super.key})
      : gradientColors = [
          Colors.deepPurple,
          Colors.indigo,
        ];

  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          "assets/images/dice-6.png",
          width: 200,
        ),
      ),
    );
  }
}
