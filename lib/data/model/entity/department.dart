import 'package:hive/hive.dart';

part 'department.g.dart';

@HiveType(typeId: 2)
class Department extends HiveObject {

  @HiveField(0)
  late String name;
  @HiveField(1)
  late String leader;
  @HiveField(2)
  late int employeeCount;

  Department(this.name, this.leader, this.employeeCount);
}