import 'package:dio/dio.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:retrofit/http.dart';

import '../../model/response/question/question_detail_response.dart';
import '../api_config.dart';

part 'api_service_question.g.dart';

@RestApi(baseUrl: ApiConfig.domainHostQuestion)
abstract class ApiServiceQuestion {
  factory ApiServiceQuestion(Dio dio, {String baseUrl}) = _ApiServiceQuestion;

  @GET(ApiConfig.questions)
  Future<QuestionResponse> getQuestions();

  @GET(ApiConfig.detailQuestion)
  Future<QuestionDetailResponse> getDetailQuestion();
}
