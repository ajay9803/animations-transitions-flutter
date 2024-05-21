import 'package:flutter/material.dart';

class AnimatedDefaultTextstyleExample extends StatefulWidget {
  const AnimatedDefaultTextstyleExample({super.key});

  @override
  State<AnimatedDefaultTextstyleExample> createState() =>
      _AnimatedDefaultTextstyleExampleState();
}

class _AnimatedDefaultTextstyleExampleState
    extends State<AnimatedDefaultTextstyleExample> {
  bool _change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FocusableActionDetector(
          mouseCursor: SystemMouseCursors.click,
          onShowHoverHighlight: (onShowHoverHighlight) {
            if (onShowHoverHighlight) {
              setState(() {
                _change = true;
              });
            } else {
              setState(() {
                _change = false;
              });
            }
          },
          child: AnimatedDefaultTextStyle(
            duration: const Duration(
              milliseconds: 200,
            ),
            style: TextStyle(
              fontSize: 25,
              color: !_change ? Colors.black : Colors.red,
              fontWeight: !_change ? FontWeight.normal : FontWeight.bold,
            ),
            child: const Text(
              'My Text',
            ),
          ),
        ),
      ),
    );
  }
}
