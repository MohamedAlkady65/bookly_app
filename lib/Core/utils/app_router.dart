import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/home_view';
  static const bookDetailsView = '/book_details_view';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/a',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
