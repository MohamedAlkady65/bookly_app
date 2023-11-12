import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BookDetailsAppBar(),
          BookDetailsSection(),
          SimilarBooksSection()
        ],
      ),
    );
  }
}
