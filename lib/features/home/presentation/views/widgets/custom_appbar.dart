import 'package:booklyzag/core/utils/assets.dart';
import 'package:booklyzag/core/utils/functions/init_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar>
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
        },
        beginOffset: const Offset(-2,0));
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, bottom: 30, left: 20, right: 20),
      child: Row(
        children: [
          SlideTransition(
            position: slidingAnimation,
            child: Image.asset(
              AssetsData.logo,
              height: 20,
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesome.magnifying_glass_solid,
            size: 20,
          )
        ],
      ),
    );
  }
}
