import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AssetsData.logo,
              height: 24,
            ),
            IconButton(
                splashRadius: 22,
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.searchView);
                },
                iconSize: 24,
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                ))
          ],
        ),
      ),
    );
  }
}
