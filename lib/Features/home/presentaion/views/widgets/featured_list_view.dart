import 'package:bookly_app/Core/utils/widgets/loadingWidget.dart';
import 'package:bookly_app/Features/home/presentaion/manager/featured_books/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => FeaturedItem(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorWidget(state.errMessage);
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
