import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const BookDetailsAppBar(),
          BookDetailsSection(
            bookModel: bookModel,
          ),
          const SimilarBooksSection()
        ],
      ),
    );
  }
}
