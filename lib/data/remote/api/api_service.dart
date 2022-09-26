import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/response/user/user_response.dart';
import '../api_config.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConfig.domainHost)
abstract class ApiService {
  factory ApiService(Dio dio, { String baseUrl }) = _ApiService;

  @GET(ApiConfig.persona)
  Future<UserResponse> getPersona();
}