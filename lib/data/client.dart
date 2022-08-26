import 'package:dio/dio.dart';
import 'package:mvvm_flutter/data/remote/response/user_response.dart';
import 'package:retrofit/http.dart';

import 'api_config.dart';

part 'client.g.dart';

@RestApi(baseUrl: "https://private-f66ab-myportfolio6.apiary-mock.com")
abstract class APIClient {
  factory APIClient(Dio dio, {String baseUrl}) = _APIClient;

  @GET(ApiConfig.persona)
  Future<UserResponse> getPersona();
}
