import 'package:freezed_annotation/freezed_annotation.dart';

import '../base_response.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@Freezed()
class UserResponse with _$UserResponse {
  const factory UserResponse({
    @Default(null) Meta? meta,
    @Default(null) Data? data,
    required int id,
    required String full_name,
    required String email,
    @Default(0) int age,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic?> json) =>
      _$UserResponseFromJson(json);
}

@Freezed()
class Data with _$Data {
  const factory Data({
    required int id,
    required String address,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}