import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly_app/Features/home/presentaion/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_image.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Similar Books",
            style: Styles.text18SemiBold,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
              builder: (context, state) {
                if (state is SimilarBooksSuccess) {
                  return ListView.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) =>
                        SimilarBookItem(bookModel: state.books[index]),
                  );
                } else if (state is SimilarBooksFailure) {
                  return CustomErrorWidget(errMessage: state.errMessage);
                } else {
                  return const CustomLoadingWidget();
                }
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
