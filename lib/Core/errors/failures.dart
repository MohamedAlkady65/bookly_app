import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout, Please try again later");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout, Please try again later");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout, Please try again later");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate, Please try again later");
      case DioExceptionType.badResponse:
        return ServerFailure.fromDioResponse(e.response!);
      case DioExceptionType.cancel:
        return ServerFailure("Request was canceled, Please try again later");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error, Please try again later");
      case DioExceptionType.unknown:
        {
          if (e.message!.contains("SocketException")) {
            return ServerFailure("No Internet Connection");
          }
          return ServerFailure(
              "Opps.. Something went wrong, Please try again later");
        }

      default:
        return ServerFailure(
            "Opps.. Something went wrong, Please try again later");
    }
  }

  factory ServerFailure.fromDioResponse(Response response) {
    switch (response.statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(response.data['error']['message']);
      case 404:
        return ServerFailure("Resourse is not found");
      default:
        return ServerFailure(
            "Opps.. Something went wrong, Please try again later");
    }
  }
}
