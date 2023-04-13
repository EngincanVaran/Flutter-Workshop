import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Colors.deepOrange,
            Colors.cyan,
          ],
        ),
        /*
        body: GradientContainer.purple(),
        */
      ),
    ),
  );
}
