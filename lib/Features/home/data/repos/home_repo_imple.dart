import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService service;

  HomeRepoImple({required this.service});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      final data = await service.get(
          endpoint:
              "/volumes?Filtering=free-ebooks&q=subject:programming&orderBy=newest");

      final List<BookModel> books =
          (data["items"] as List<Map<String, dynamic>>)
              .map<BookModel>((e) => BookModel.fromJson(e))
              .toList();

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
