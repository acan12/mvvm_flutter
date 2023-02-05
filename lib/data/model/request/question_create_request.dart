import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_create_request.freezed.dart';
part 'question_create_request.g.dart';

@Freezed()
class QuestionCreateRequest with _$QuestionCreateRequest {
  const factory QuestionCreateRequest({
    required String question,
    required String answer,
  }) = _QuestionCreateRequest;

  factory QuestionCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$QuestionCreateRequestFromJson(json);
}
