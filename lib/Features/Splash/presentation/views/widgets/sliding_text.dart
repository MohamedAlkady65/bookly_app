
import 'package:flutter/material.dart';

class SlidingText extends StatefulWidget {
  const SlidingText({
    super.key, required this.text,
  });
  final String text;
  @override
  State<SlidingText> createState() => _SlidingTextState();
}

class _SlidingTextState extends State<SlidingText>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController slidingAnimationController;

  @override
  void initState() {
    slidingAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: const Offset(0, 0))
            .animate(slidingAnimationController);

    slidingAnimationController.forward();

    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });

    super.initState();
  }

  @override
  void dispose() {
    slidingAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child:  Text(
           widget.text ,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
