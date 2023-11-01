import 'package:bookly_app/Features/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(() => const HomeView(),
            transition: Transition.fade, duration: kNavigateTransitionDuration);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
