import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

void setUpServiceLocator() {
  serviceLocator.registerSingleton<ApiService>(ApiService(Dio()));
  serviceLocator.registerSingleton<HomeRepoImple>(
      HomeRepoImple(serviceLocator.get<ApiService>()));

}
