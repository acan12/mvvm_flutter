import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';

import '../../data/model/entity/employee.dart';
import '../../data/model/response/question/question_detail_response.dart';
import '../../repo/question/question_repository.dart';
import '../../repo/user/user_repository.dart';

class QuestionPageViewModel extends BaseViewModel {
  final QuestionRepository questionRepo = QuestionRepository();
  final UserRepository userRepo = UserRepository();

  var listEmployee = <Employee>[];

  Future<QuestionResponse> getQuestions() => questionRepo.getQuestions();

  Future<QuestionDetailResponse> getDetailQuestion() =>
      questionRepo.getDetailQuestion();

  Future<List<Employee>> getAllEmployee() async{
    listEmployee = await userRepo.getAllEmployee();

    notifyListeners();
    return listEmployee;
  }

  void addEmployee(Employee employee) {
    userRepo.addEmployment(employee);
    notifyListeners();
  }

  void deleteAllEmployee() {
    userRepo.deleteAllEmploye();
    notifyListeners();
  }
}
