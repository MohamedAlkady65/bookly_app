import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_list.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Best Seller",
            style: Styles.text18SemiBold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        BestSellerList(),
      ],
    );
  }
}
