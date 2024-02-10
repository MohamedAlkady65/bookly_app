import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_imple.dart';
import 'package:bookly_app/Features/home/presentaion/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const homeView = '/home_view';
  static const bookDetailsView = '/book_details_view';
  static const searchView = '/search_view';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: bookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            SimilarBooksCubit(serviceLocator.get<HomeRepoImple>()),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: searchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
