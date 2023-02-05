// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionCreateResponse _$QuestionCreateResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionCreateResponse {
  String get question => throw _privateConstructorUsedError;
  String get published_at => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCreateResponseCopyWith<QuestionCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCreateResponseCopyWith<$Res> {
  factory $QuestionCreateResponseCopyWith(QuestionCreateResponse value,
          $Res Function(QuestionCreateResponse) then) =
      _$QuestionCreateResponseCopyWithImpl<$Res, QuestionCreateResponse>;
  @useResult
  $Res call({String question, String published_at, String answer});
}

/// @nodoc
class _$QuestionCreateResponseCopyWithImpl<$Res,
        $Val extends QuestionCreateResponse>
    implements $QuestionCreateResponseCopyWith<$Res> {
  _$QuestionCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? published_at = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      published_at: null == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCreateResponseCopyWith<$Res>
    implements $QuestionCreateResponseCopyWith<$Res> {
  factory _$$_QuestionCreateResponseCopyWith(_$_QuestionCreateResponse value,
          $Res Function(_$_QuestionCreateResponse) then) =
      __$$_QuestionCreateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String published_at, String answer});
}

/// @nodoc
class __$$_QuestionCreateResponseCopyWithImpl<$Res>
    extends _$QuestionCreateResponseCopyWithImpl<$Res,
        _$_QuestionCreateResponse>
    implements _$$_QuestionCreateResponseCopyWith<$Res> {
  __$$_QuestionCreateResponseCopyWithImpl(_$_QuestionCreateResponse _value,
      $Res Function(_$_QuestionCreateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? published_at = null,
    Object? answer = null,
  }) {
    return _then(_$_QuestionCreateResponse(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      published_at: null == published_at
          ? _value.published_at
          : published_at // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionCreateResponse implements _QuestionCreateResponse {
  const _$_QuestionCreateResponse(
      {required this.question,
      required this.published_at,
      required this.answer});

  factory _$_QuestionCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionCreateResponseFromJson(json);

  @override
  final String question;
  @override
  final String published_at;
  @override
  final String answer;

  @override
  String toString() {
    return 'QuestionCreateResponse(question: $question, published_at: $published_at, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionCreateResponse &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.published_at, published_at) ||
                other.published_at == published_at) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, published_at, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCreateResponseCopyWith<_$_QuestionCreateResponse> get copyWith =>
      __$$_QuestionCreateResponseCopyWithImpl<_$_QuestionCreateResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionCreateResponseToJson(
      this,
    );
  }
}

abstract class _QuestionCreateResponse implements QuestionCreateResponse {
  const factory _QuestionCreateResponse(
      {required final String question,
      required final String published_at,
      required final String answer}) = _$_QuestionCreateResponse;

  factory _QuestionCreateResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionCreateResponse.fromJson;

  @override
  String get question;
  @override
  String get published_at;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCreateResponseCopyWith<_$_QuestionCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
