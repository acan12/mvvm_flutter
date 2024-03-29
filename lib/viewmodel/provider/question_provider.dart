import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/request/question_create_request.dart';
import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';

import '../../data/model/response/question/question_create_response.dart';
import '../../data/model/response/question/question_detail_response.dart';
import '../../data/model/response/question/question_response.dart';

final allQuestionProvider = FutureProvider.autoDispose<QuestionResponse>(
    (ref) => QuestionPageViewModel().getQuestions());

final detailQuestionProvider =
    FutureProvider.autoDispose<QuestionDetailResponse>(
        (ref) => QuestionPageViewModel().getDetailQuestion());

final createQuestionProvider =
    FutureProvider.family<QuestionCreateResponse, QuestionCreateRequest>(
        (ref, createRequest) =>
            QuestionPageViewModel().postCreateQuestion(createRequest));

final questionPageProvider = ChangeNotifierProvider<QuestionPageViewModel>(
    (_) => QuestionPageViewModel());
