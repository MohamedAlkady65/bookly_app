import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSeller(),
        )
      ],
    );
  }
}
