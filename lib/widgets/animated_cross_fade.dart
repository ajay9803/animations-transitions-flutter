import 'package:flutter/material.dart';

class AnimatedCrossfadeExample extends StatefulWidget {
  const AnimatedCrossfadeExample({super.key});

  @override
  State<AnimatedCrossfadeExample> createState() =>
      _AnimatedCrossfadeExampleState();
}

class _AnimatedCrossfadeExampleState extends State<AnimatedCrossfadeExample> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _first = !_first;
        });
      },
      child: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 100.0),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
    );
  }
}
