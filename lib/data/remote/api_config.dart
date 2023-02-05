import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';

abstract class ApiConfig {
  static const domainHostPortfolio =
      "https://private-f66ab-myportfolio6.apiary-mock.com/";
  static const persona = "personal";

  static const domainHostQuestion =
      "https://private-07584e-members16.apiary-mock.com/";
  static const questions = "questions";
  static const detailQuestion = "question/1";
  static const createQuestion = "question";

  static Dio getDio() {
    var dio = Dio(BaseOptions(
      contentType: "application/json",
    ));
    dio.interceptors.add(ChuckerDioInterceptor());

    return dio;
  }
}
