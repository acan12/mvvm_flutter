//
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:mvvm_flutter/data/client.dart';
// import 'package:mvvm_flutter/data/remote/response/user_response.dart';
//
// final apiProvider = Provider<APIClient>(
//     (ref) => APIClient(
//       Dio(
//         BaseOptions(contentType: "application/json")
//       )
//     )
// );
//
// final userProvider = FutureProvider.autoDispose<UserResponse>(
//     (ref) async {
//       final APIClient _apiClient = ref.watch(apiProvider);
//       try{
//         UserResponse _userResponse = await _apiClient.getPersona();
//         return _userResponse;
//       }catch(err){
//         print(err);
//       }
//     }
// );