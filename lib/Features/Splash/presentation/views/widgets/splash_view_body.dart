import 'package:bookly_app/Core/utils/assets_data.dart';
import 'package:bookly_app/Features/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: 250,
        ),
        const SizedBox(
          height: 10,
        ),
        const SlidingText(
          text: "Read Free Books",
        )
      ],
    );
  }
}
