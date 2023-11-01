import 'package:bookly_app/Features/home/presentaion/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 24),
        itemBuilder: (context, index) => const FeaturedItem(),
      ),
    );
  }
}
