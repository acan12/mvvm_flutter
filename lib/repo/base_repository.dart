import 'package:freezed_demo/data/model/entity/employee.dart';

import 'package:freezed_demo/data/model/response/user/user_response.dart';

abstract class BaseRepository {
  Future<UserResponse> getPersona();
  Future addEmployment(Employee employee);
  Future<List<Employee>> getAllEmployee();
}