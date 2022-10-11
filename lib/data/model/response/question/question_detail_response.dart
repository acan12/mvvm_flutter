import 'package:freezed_annotation/freezed_annotation.dart';

import '../base_response.dart';

part 'question_detail_response.freezed.dart';
part 'question_detail_response.g.dart';

@Freezed()
class QuestionDetailResponse with _$QuestionDetailResponse {
  const factory QuestionDetailResponse({
    required Meta meta,
    required Data data,
  }) = _QuestionDetailResponse;

  factory QuestionDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionDetailResponseFromJson(json);
}


@Freezed()
class Data with _$Data {
  const factory Data({
    required String image,
    required String question,
    required String published_at,
    required String answer,

  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
