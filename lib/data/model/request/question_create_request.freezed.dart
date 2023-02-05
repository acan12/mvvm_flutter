// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionCreateRequest _$QuestionCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _QuestionCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$QuestionCreateRequest {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCreateRequestCopyWith<QuestionCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCreateRequestCopyWith<$Res> {
  factory $QuestionCreateRequestCopyWith(QuestionCreateRequest value,
          $Res Function(QuestionCreateRequest) then) =
      _$QuestionCreateRequestCopyWithImpl<$Res, QuestionCreateRequest>;
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class _$QuestionCreateRequestCopyWithImpl<$Res,
        $Val extends QuestionCreateRequest>
    implements $QuestionCreateRequestCopyWith<$Res> {
  _$QuestionCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCreateRequestCopyWith<$Res>
    implements $QuestionCreateRequestCopyWith<$Res> {
  factory _$$_QuestionCreateRequestCopyWith(_$_QuestionCreateRequest value,
          $Res Function(_$_QuestionCreateRequest) then) =
      __$$_QuestionCreateRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String question, String answer});
}

/// @nodoc
class __$$_QuestionCreateRequestCopyWithImpl<$Res>
    extends _$QuestionCreateRequestCopyWithImpl<$Res, _$_QuestionCreateRequest>
    implements _$$_QuestionCreateRequestCopyWith<$Res> {
  __$$_QuestionCreateRequestCopyWithImpl(_$_QuestionCreateRequest _value,
      $Res Function(_$_QuestionCreateRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$_QuestionCreateRequest(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
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
class _$_QuestionCreateRequest
    with DiagnosticableTreeMixin
    implements _QuestionCreateRequest {
  const _$_QuestionCreateRequest(
      {required this.question, required this.answer});

  factory _$_QuestionCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionCreateRequestFromJson(json);

  @override
  final String question;
  @override
  final String answer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionCreateRequest(question: $question, answer: $answer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionCreateRequest'))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('answer', answer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionCreateRequest &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCreateRequestCopyWith<_$_QuestionCreateRequest> get copyWith =>
      __$$_QuestionCreateRequestCopyWithImpl<_$_QuestionCreateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionCreateRequestToJson(
      this,
    );
  }
}

abstract class _QuestionCreateRequest implements QuestionCreateRequest {
  const factory _QuestionCreateRequest(
      {required final String question,
      required final String answer}) = _$_QuestionCreateRequest;

  factory _QuestionCreateRequest.fromJson(Map<String, dynamic> json) =
      _$_QuestionCreateRequest.fromJson;

  @override
  String get question;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCreateRequestCopyWith<_$_QuestionCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
