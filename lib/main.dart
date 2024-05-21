import 'package:animations_in_flutter/widgets/animated_cross_fade.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedCrossfadeExample(),
    );
  }
}
