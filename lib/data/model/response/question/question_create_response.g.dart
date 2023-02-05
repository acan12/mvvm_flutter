// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_create_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionCreateResponse _$$_QuestionCreateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionCreateResponse(
      question: json['question'] as String,
      published_at: json['published_at'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_QuestionCreateResponseToJson(
        _$_QuestionCreateResponse instance) =>
    <String, dynamic>{
      'question': instance.question,
      'published_at': instance.published_at,
      'answer': instance.answer,
    };
