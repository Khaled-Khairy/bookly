import 'package:booklyzag/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list.dart';
import 'custom_appbar.dart';
import 'featured_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            FeaturedListView(),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 40,bottom: 20),
              child: Text("Best Seller", style: Styles.textStyle24),
            ),
          ],
        ),),
        BestSellerList(),
      ],
    );
  }
}
