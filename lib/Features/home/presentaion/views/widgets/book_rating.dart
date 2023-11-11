import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: Styles.text16Medium,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          "(2390)",
          style: Styles.text14SemiBold.copyWith(color: kBorderColor),
        ),
      ],
    );
  }
}
