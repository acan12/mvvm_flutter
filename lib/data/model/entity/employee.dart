import 'package:hive/hive.dart';

part 'employee.g.dart';

@HiveType(typeId: 0)
class Employee extends HiveObject{
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String full_name;
  @HiveField(2)
  late String email;
  @HiveField(3)
  late String age;

  Employee(this.name, this.full_name, this.age, this.email);
}
