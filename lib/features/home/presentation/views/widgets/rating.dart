import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "\$19.99",
          style: Styles.textStyle20,
        ),
        Spacer(),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "(2548)",
          style: Styles.ratingCountStyle,
        )
      ],
    );
  }
}
