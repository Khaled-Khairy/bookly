import 'package:booklyzag/core/utils/styles.dart';
import 'package:booklyzag/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyzag/features/home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          const SizedBox(height: 160, child: CustomBookImage()),
          const SizedBox(width: 5,),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 2,
                ),
                Rating()
              ],
            ),
          )
        ],
      ),
    );
  }
}
