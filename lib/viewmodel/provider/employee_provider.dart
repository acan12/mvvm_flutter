import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';

import '../question/question_viewmodel.dart';

final allEmployeeProvider = FutureProvider.autoDispose<List<Employee>>((_) =>
    QuestionPageViewModel().getAllEmployee());