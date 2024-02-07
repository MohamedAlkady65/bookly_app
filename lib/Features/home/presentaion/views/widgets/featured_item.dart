import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.error),
              ),
            ),
            playIcon()
          ],
        ),
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
