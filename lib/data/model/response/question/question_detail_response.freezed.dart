// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDetailResponse _$QuestionDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionDetailResponse {
  Meta get meta => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDetailResponseCopyWith<QuestionDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailResponseCopyWith<$Res> {
  factory $QuestionDetailResponseCopyWith(QuestionDetailResponse value,
          $Res Function(QuestionDetailResponse) then) =
      _$QuestionDetailResponseCopyWithImpl<$Res, QuestionDetailResponse>;
  @useResult
  $Res call({Meta meta, Data data});

  $MetaCopyWith<$Res> get meta;
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$QuestionDetailResponseCopyWithImpl<$Res,
        $Val extends QuestionDetailResponse>
    implements $QuestionDetailResponseCopyWith<$Res> {
  _$QuestionDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionDetailResponseCopyWith<$Res>
    implements $QuestionDetailResponseCopyWith<$Res> {
  factory _$$_QuestionDetailResponseCopyWith(_$_QuestionDetailResponse value,
          $Res Function(_$_QuestionDetailResponse) then) =
      __$$_QuestionDetailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, Data data});

  @override
  $MetaCopyWith<$Res> get meta;
  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_QuestionDetailResponseCopyWithImpl<$Res>
    extends _$QuestionDetailResponseCopyWithImpl<$Res,
        _$_QuestionDetailResponse>
    implements _$$_QuestionDetailResponseCopyWith<$Res> {
  __$$_QuestionDetailResponseCopyWithImpl(_$_QuestionDetailResponse _value,
      $Res Function(_$_QuestionDetailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = null,
  }) {
    return _then(_$_QuestionDetailResponse(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDetailResponse implements _QuestionDetailResponse {
  const _$_QuestionDetailResponse({required this.meta, required this.data});

  factory _$_QuestionDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDetailResponseFromJson(json);

  @override
  final Meta meta;
  @override
  final Data data;

  @override
  String toString() {
    return 'QuestionDetailResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDetailResponse &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, meta, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDetailResponseCopyWith<_$_QuestionDetailResponse> get copyWith =>
      __$$_QuestionDetailResponseCopyWithImpl<_$_QuestionDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDetailResponseToJson(
      this,
    );
  }
}

abstract class _QuestionDetailResponse implements QuestionDetailResponse {
  const factory _QuestionDetailResponse(
      {required final Meta meta,
      required final Data data}) = _$_QuestionDetailResponse;

  factory _QuestionDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionDetailResponse.fromJson;

  @override
  Meta get meta;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDetailResponseCopyWith<_$_QuestionDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get image => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get published_at => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String image, String question, String published_at, String answer});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? question = null,
    Object? published_at = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String image, String question, String published_at, String answer});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? question = null,
    Object? published_at = null,
    Object? answer = null,
  }) {
    return _then(_$_Data(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_Data implements _Data {
  const _$_Data(
      {required this.image,
      required this.question,
      required this.published_at,
      required this.answer});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String image;
  @override
  final String question;
  @override
  final String published_at;
  @override
  final String answer;

  @override
  String toString() {
    return 'Data(image: $image, question: $question, published_at: $published_at, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.published_at, published_at) ||
                other.published_at == published_at) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, image, question, published_at, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String image,
      required final String question,
      required final String published_at,
      required final String answer}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get image;
  @override
  String get question;
  @override
  String get published_at;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
