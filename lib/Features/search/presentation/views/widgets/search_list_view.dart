import 'package:bookly_app/Core/utils/widgets/book_item.dart';
import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        itemCount: 10,
        itemBuilder: (context, index) => const SizedBox(),
        // itemBuilder: (context, index) => const BookItem(),
      ),
    );
  }
}
