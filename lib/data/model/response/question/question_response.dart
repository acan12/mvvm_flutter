import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/question.dart';
import '../base_response.dart';

part 'question_response.freezed.dart';
part 'question_response.g.dart';

@Freezed()
class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    required Meta meta,
    required Data data,
  }) = _QuestionResponse;

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}


@Freezed()
class Data with _$Data {
  const factory Data({
    required List<Question> questions,

  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
