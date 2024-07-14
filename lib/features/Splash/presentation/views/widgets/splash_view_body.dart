import 'package:booklyzag/core/utils/app_router.dart';
import 'package:booklyzag/core/utils/functions/init_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation(
        vsync: this,
        setController: (controller) {
          animationController = controller;
        },
        setAnimation: (animation) {
          slidingAnimation = animation;
        }, beginOffset: const Offset(0, 2));
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
