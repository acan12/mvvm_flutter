// abstract class BaseError {
//   final int code;
//   final String message;
//
//   BaseError({required this.code, required this.message});
// }
//
// class NeedLogin implements BaseError {
//   @override
//   int get code => 401;
//
//   @override
//   String get message => "please login first";
// }
//
// class NeedAuth implements BaseError {
//   @override
//   int get code => 403;
//
//   @override
//   String get message => "illegal access, please use the correct token";
// }
//
// class UserNotExist implements BaseError {
//   @override
//   int get code => 408;
//
//   @override
//   String get message => "user does not exist";
// }
//
// class UserNameEmpty implements BaseError {
//   @override
//   int get code => 405;
//
//   @override
//   String get message => "user name cannot be empty";
// }
//
// class PwdNotMatch implements BaseError {
//   @override
//   int get code => 409;
//
//   @override
//   String get message => "incorrect user password";
// }
//
// class PwdEmpty implements BaseError {
//   @override
//   int get code => 406;
//
//   @override
//   String get message => "user password cannot be empty";
// }
//
// class OtherError implements BaseError {
//
//   final int statusCode;
//   final String statusMessage;
//
//   OtherError({this.statusCode, this.statusMessage});
//
//   @override
//   int get code => statusCode;
//
//   @override
//   String get message => statusMessage;
//
// }