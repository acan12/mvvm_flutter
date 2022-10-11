import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/local/db/database.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/data/model/response/user/user_response.dart';
import 'package:freezed_demo/repo/base_repository.dart';
import 'package:hive/hive.dart';

import '../../data/config.dart';
import '../../data/remote/api/api_service_portfolio.dart';

class UserRepository implements BaseRepository {
  final userRepoProvider = Provider((ref) => UserRepository());

  @override
  Future<UserResponse> getPersona() async {
    final client = ApiServicePortfolio(Dio(BaseOptions(contentType: "application/json")));
    return client.getPersona();
  }

  @override
  Future<List<Employee>> getAllEmployee() async{
    final box =  await Hive.openBox<Employee>(DB_EMPLOYEE);
    return box.values.toList();
  }

  @override
  void addEmployment(Employee employee) async {
    var employees = await Database.getBoxEmployee();
    employees.add(employee);
  }

  @override
  void deleteAllEmploye() async {
    var employees = await Hive.openBox<Employee>(DB_EMPLOYEE);
    employees.clear();
  }
}
