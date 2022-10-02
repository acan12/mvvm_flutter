import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';

import '../../repo/question/question_repository.dart';

final allQuestionProvider = FutureProvider.autoDispose<QuestionResponse>(
    (ref) => QuestionViewModel().getQuestions()
);

class QuestionViewModel extends BaseViewModel {
  final QuestionRepository questionRepo = QuestionRepository();

  Future<QuestionResponse> getQuestions() => questionRepo.getQuestions();
}