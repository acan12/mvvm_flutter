// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDetailResponse _$$_QuestionDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionDetailResponse(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionDetailResponseToJson(
        _$_QuestionDetailResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      image: json['image'] as String,
      question: json['question'] as String,
      published_at: json['published_at'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'image': instance.image,
      'question': instance.question,
      'published_at': instance.published_at,
      'answer': instance.answer,
    };
