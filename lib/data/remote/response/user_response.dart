import 'package:json_annotation/json_annotation.dart';
part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  int id;
  String full_name;
  String email;

  UserResponse(this.id, this.full_name, this.email);

  factory UserResponse.fromJson(Map<String, dynamic> json ) => _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
