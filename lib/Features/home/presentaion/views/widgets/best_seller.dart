import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Seller",
            style: Styles.text18SemiBold,
          )
        ],
      ),
    );
  }
}
