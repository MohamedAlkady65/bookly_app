import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final baseUrl = "https://www.googleapis.com/books/v1";
  ApiService(Dio dio) : _dio = dio;

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    final response = await _dio.get("$baseUrl$endpoint");
    return response.data;
  }
}
