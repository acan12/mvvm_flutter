import '../../data/model/response/question/question_detail_response.dart';
import '../../data/model/response/question/question_response.dart';

abstract class IQuestionRepo {
  Future<QuestionResponse> getQuestions();
  Future<QuestionDetailResponse> getDetailQuestion();
}