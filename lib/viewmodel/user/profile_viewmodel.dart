import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';

import '../../data/model/response/user/user_response.dart';
import '../../repo/user/user_repository.dart';
import '../base_viewmodel.dart';

final personaViewModelProvider = FutureProvider<UserResponse>(
  (ref) => ProfileViewModel().getPersona(),);

final allEmployeeProvider = FutureProvider<List<Employee>>(
    (ref) => ProfileViewModel().getAllEmployee());

class ProfileViewModel extends BaseViewModel {
  final UserRepository userRepo = UserRepository();

  Future<UserResponse> getPersona() => userRepo.getPersona();

  Future<List<Employee>> getAllEmployee() => userRepo.getAllEmployee();
}
