import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/utils/widgets/custm_button.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_image.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: BookDetailsImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo.title ?? "",
          style: Styles.text30RegularGTSectraFine,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "",
          style: Styles.text18Medium.copyWith(color: const Color(0xffB7B6BC)),
        ),
        const SizedBox(
          height: 14,
        ),
        const BookRating(),
        const SizedBox(
          height: 15,
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
                  text: "Free",
                  backgroundColor: Colors.white,
                  textStyle: Styles.text18Bold.copyWith(color: Colors.black))),
          Expanded(
              child: CustomButton(
            text: "Free preview",
            backgroundColor: const Color(0xffEF8262),
            textStyle: Styles.text16Medium.copyWith(color: Colors.white),
            left: false,
          )),
        ],
      ),
    );
  }
}
