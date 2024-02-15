import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.SlidingSplashText,
  });

  final Animation<Offset> SlidingSplashText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: SlidingSplashText,
        builder: (context,_) {
          return SlideTransition(
            position: SlidingSplashText,
            child: const Text(
              "Read Free Book !",
              textAlign: TextAlign.center,
            ),
          );
        }
    );
  }
}