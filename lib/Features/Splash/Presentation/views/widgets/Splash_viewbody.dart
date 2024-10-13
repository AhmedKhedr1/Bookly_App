import 'dart:ui';

import 'package:bookly_app/Features/Splash/Presentation/views/widgets/Sliding_text.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero)
        .animate(animationController);

        animationController.forward();
        
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 10,
        ),
        sliding_text(slidingAnimation: slidingAnimation)
      ],
    );
  }
}