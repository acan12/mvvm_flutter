import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_create_response.freezed.dart';
part 'question_create_response.g.dart';

@Freezed()
class QuestionCreateResponse with _$QuestionCreateResponse {
  const factory QuestionCreateResponse({
    required String question,
    required String published_at,
    required String answer,
  }) = _QuestionCreateResponse;

  factory QuestionCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionCreateResponseFromJson(json);
}
