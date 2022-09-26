// import 'package:dio/dio.dart';
//
// class BaseDio {
//   BaseDio._ (); //  Privatize the construction method
//
//   static BaseDio _instance;
//
//   Static basedio getinstance() {// get an instance through getInstance
//     _instance ??= BaseDio._();
//
//     return _instance;
//   }
//
//   Dio getDio() {
//     final Dio dio = Dio();
//     dio. options = BaseOptions(receiveTimeout: 66000, connectTimeout: 66000); //  Set timeout, etc
//     dio. interceptors. add(HeaderInterceptor()); //  Adding interceptors, such as token, requires global parameters
//     dio. interceptors. Add (prettydiologger) // add a log formatting tool class
//     requestHeader: true,
//     requestBody: true,
//     responseBody: true,
//     responseHeader: false,
//     compact: false,
//     ));
//
//     return dio;
//   }
//
//   BaseError getdioerror (object obj) {// a baseerror class is encapsulated here. Different error classes will be returned according to the code returned by the backend
//     switch (obj.runtimeType) {
//       case DioError:
//         if ((obj as DioError).type == DioErrorType.RESPONSE) {
//           final response = (obj as DioError).response;
//           if (response.statusCode == 401) {
//             return NeedLogin();
//           } else if (response.statusCode == 403) {
//             return NeedAuth();
//           } else if (response.statusCode == 408) {
//             return UserNotExist();
//           } else if (response.statusCode == 409) {
//             return PwdNotMatch();
//           } else if (response.statusCode == 405) {
//             return UserNameEmpty();
//           } else if (response.statusCode == 406) {
//             return PwdEmpty();
//           } else {
//             return OtherError(
//               statusCode: response.statusCode,
//               statusMessage: response.statusMessage,
//             );
//           }
//         }
//     }
//
//     return OtherError();
//   }
// };