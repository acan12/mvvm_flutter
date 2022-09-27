import 'package:hive/hive.dart';

part 'job.g.dart';

@HiveType(typeId: 1)
class Job {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String minEducation;
  @HiveField(2)
  late int experienceInYears;

  Job(this.name, this.minEducation, this.experienceInYears);
}
