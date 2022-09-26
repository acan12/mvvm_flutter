import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/local/box/boxes.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/base_repository.dart';
import 'package:hive/hive.dart';

import '../../data/config.dart';
import '../../data/remote/api/api_service.dart';

class UserRepository implements BaseRepository {
  static final userRepoProvider = Provider((ref) => UserRepository());

  @override
  Future<UserResponse> getPersona() async {
    final client = ApiService(Dio(BaseOptions(contentType: "application/json")));
    return client.getPersona();
  }

  @override
  Future addEmployment(Employee employee) async {
    final box = Boxes.getBoxEmployee();
    return box.add(employee);
  }

  @override
  Future<List<Employee>> getAllEmployee() async{
    final box =  await Hive.openBox<Employee>(DB_EMPLOYEE);
    return box.values.toList();
  }
}
