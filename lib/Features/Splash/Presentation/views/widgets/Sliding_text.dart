
import 'package:flutter/material.dart';

class sliding_text extends StatelessWidget {
  const sliding_text({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:slidingAnimation ,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free books',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}
