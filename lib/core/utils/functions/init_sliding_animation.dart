import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void initSlidingAnimation({
  required TickerProvider vsync,
  required Function(AnimationController) setController,
  required Function(Animation<Offset>) setAnimation,
  required Offset beginOffset,
}) {
  final animationController =
      AnimationController(vsync: vsync, duration: const Duration(seconds: 1));

  final slidingAnimation =
      Tween<Offset>(begin: beginOffset, end: Offset.zero)
          .animate(animationController);
  setController(animationController);
  setAnimation(slidingAnimation);
  animationController.forward();

}
