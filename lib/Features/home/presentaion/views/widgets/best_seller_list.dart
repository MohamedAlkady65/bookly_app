import 'package:bookly_app/Core/utils/widgets/book_item.dart';
import 'package:bookly_app/Core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/Core/utils/widgets/custom_loading_widget.dart';
import 'package:bookly_app/Features/home/presentaion/manager/newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              itemCount: state.books.length,
              itemBuilder: (context, index) =>  BookItem(
                bookModel: state.books[index],
              ),
            );
          } else if (state is NewestBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const CustomLoadingWidget();
          }
        },
      ),
    );
  }
}
