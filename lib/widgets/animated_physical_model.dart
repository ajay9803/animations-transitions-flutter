import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              change = !change;
            });
          },
          child: AnimatedPhysicalModel(
            duration: const Duration(
              seconds: 1,
            ),
            shadowColor: Colors.black,
            color: Colors.blue,
            elevation: !change ? 0 : 50,
            shape: BoxShape.rectangle,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
