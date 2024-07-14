import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        FeaturedListView(),
      ],
    );
  }
}
