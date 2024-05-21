import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            color: Colors.transparent,
          ),
          width: 250.0,
          height: 250.0,
          child: AnimatedAlign(
            alignment: !selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 1),
            curve: Curves.fastLinearToSlowEaseIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
