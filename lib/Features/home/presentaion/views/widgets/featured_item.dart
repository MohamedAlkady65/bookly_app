import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // image: const DecorationImage(
          //   fit: BoxFit.fill,
          //   image: AssetImage("assets/images/test_item.png"),
          // ),
        ),
        child: Image.asset(
          "assets/images/test_item.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
