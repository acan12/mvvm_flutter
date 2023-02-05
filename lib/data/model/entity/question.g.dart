// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      question: json['question'] as String,
      published_at: json['published_at'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'question': instance.question,
      'published_at': instance.published_at,
      'answer': instance.answer,
    };
