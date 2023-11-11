import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/utils/widgets/custm_button.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_image.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const BookDetailsImage(),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.text30RegularGTSectraFine,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.text18Medium.copyWith(color: const Color(0xffB7B6BC)),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(
          height: 37,
        ),
        const BookAction()
      ],
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 48,
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  text: "19.99€",
                  backgroundColor: Colors.white,
                  textStyle: Styles.text18Bold.copyWith(color: Colors.black))),
          const Expanded(
              child: CustomButton(
            text: "Free preview",
            backgroundColor: Color(0xffEF8262),
            textStyle: Styles.text16Medium,
            left: false,
          )),
        ],
      ),
    );
  }
}
