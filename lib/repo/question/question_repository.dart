
import 'package:dio/dio.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/data/remote/api/api_service_question.dart';

import '../../data/model/response/question/question_detail_response.dart';

class QuestionRepository implements IQuestionRepo {

  @override
  Future<QuestionResponse> getQuestions() {
    final client = ApiServiceQuestion(Dio(BaseOptions(contentType: "application/json")));
    return client.getQuestions();
  }

  @override
  Future<QuestionDetailResponse> getDetailQuestion() {
    final client = ApiServiceQuestion(Dio(BaseOptions(contentType: "application/json")));
    return client.getDetailQuestion();
  }
}

abstract class IQuestionRepo {
  Future<QuestionResponse> getQuestions();

  Future<QuestionDetailResponse> getDetailQuestion();
}