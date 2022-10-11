import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/response/user/user_response.dart';
import '../api_config.dart';
part 'api_service_portfolio.g.dart';

@RestApi(baseUrl: ApiConfig.domainHostPortfolio)
abstract class ApiServicePortfolio {
  factory ApiServicePortfolio(Dio dio, { String baseUrl }) = _ApiServicePortfolio;

  @GET(ApiConfig.persona)
  Future<UserResponse> getPersona();
}