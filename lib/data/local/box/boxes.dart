import 'package:freezed_demo/data/config.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Employee> getBoxEmployee() => Hive.box<Employee>(DB_EMPLOYEE);
  // static Box<Employee> getBoxEmployees() => Hive.openBox<Employee>(DB_EMPLOYEE);
}