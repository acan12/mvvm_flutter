import 'package:freezed_demo/data/config.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:hive/hive.dart';

class Database {
  static Future<Box<Employee>> getBoxEmployee() => Hive.openBox<Employee>(DB_EMPLOYEE);

}