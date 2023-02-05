import 'package:freezed_demo/data/model/request/question_create_request.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/data/remote/api/api_service_question.dart';
import 'package:freezed_demo/data/remote/api_config.dart';

import '../../data/model/response/question/question_create_response.dart';
import '../../data/model/response/question/question_detail_response.dart';

class QuestionRepository implements IQuestionRepo {
  @override
  Future<QuestionResponse> getQuestions() {
    final client = ApiServiceQuestion(ApiConfig.getDio());
    return client.getQuestions();
  }

  @override
  Future<QuestionDetailResponse> getDetailQuestion() {
    final client = ApiServiceQuestion(ApiConfig.getDio());
    return client.getDetailQuestion();
  }

  @override
  Future<QuestionCreateResponse> postCreateQuestion(
      QuestionCreateRequest createRequest) {
    final client = ApiServiceQuestion(ApiConfig.getDio());
    return client.createQuestion(createRequest);
  }
}

abstract class IQuestionRepo {
  Future<QuestionResponse> getQuestions();

  Future<QuestionDetailResponse> getDetailQuestion();

  Future<QuestionCreateResponse> postCreateQuestion(
      QuestionCreateRequest createRequest);
}
