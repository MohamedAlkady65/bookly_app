import 'dart:ui';

import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Stack(
        children: [
          Container(
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
          playIcon(),
        ],
      ),
    );
  }

  Positioned playIcon() {
    return Positioned(
          right: 15,
          bottom: 10,
          child: SizedBox(
            width: 45,
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(99999),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
  }
}
