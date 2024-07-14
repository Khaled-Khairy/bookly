import 'package:booklyzag/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48,bottom: 30,left: 20,right: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20,),
          const Spacer(),
          const Icon(FontAwesome.magnifying_glass_solid,size: 20,)
        ],
      ),
    );
  }
}
