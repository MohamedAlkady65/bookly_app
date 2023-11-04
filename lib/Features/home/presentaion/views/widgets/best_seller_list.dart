import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        itemCount: 10,
        itemBuilder: (context, index) => const BestSellerItem(),
      ),
    );
  }
}
