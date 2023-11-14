import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Core/utils/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextField(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Search Result",
            style: Styles.text18SemiBold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SearchListView()
      ],
    );
  }
}
