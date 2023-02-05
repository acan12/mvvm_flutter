// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionResponse _$$_QuestionResponseFromJson(Map<String, dynamic> json) =>
    _$_QuestionResponse(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionResponseToJson(_$_QuestionResponse instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'questions': instance.questions,
    };
