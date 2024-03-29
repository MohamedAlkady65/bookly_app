import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo {
  final ApiService service;

  HomeRepoImple(this.service);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await service.get(
          endpoint:
              "/volumes?Filtering=free-ebooks&q=subject:programming&orderBy=newest");

      final List<BookModel> books = (data["items"] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList();

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      final data = await service.get(
          endpoint: "/volumes?Filtering=free-ebooks&q=subject:programming");

      final List<BookModel> books = (data["items"] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList();

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      String category) async {
    try {
      final data = await service.get(
          endpoint:
              "/volumes?Filtering=free-ebooks&q=$category&orderBy=relevance");

      final List<BookModel> books = (data["items"] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map<BookModel>((e) => BookModel.fromJson(e))
          .toList();

      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
