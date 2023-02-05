import 'package:freezed_demo/data/model/request/question_create_request.dart';
import 'package:freezed_demo/data/model/response/question/question_create_response.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/viewmodel/base_viewmodel.dart';

import '../../data/model/entity/employee.dart';
import '../../data/model/response/question/question_detail_response.dart';
import '../../repo/question/question_repository.dart';
import '../../repo/user/user_repository.dart';
import '../question_service.dart';

class QuestionPageViewModel extends BaseViewModel implements QuestionService {
  final QuestionRepository questionRepo = QuestionRepository();
  final UserRepository userRepo = UserRepository();

  var listEmployee = <Employee>[];

  @override
  Future<QuestionResponse> getQuestions() => questionRepo.getQuestions();

  @override
  Future<QuestionDetailResponse> getDetailQuestion() =>
      questionRepo.getDetailQuestion();

  @override
  Future<QuestionCreateResponse> postCreateQuestion(
          QuestionCreateRequest createRequest) =>
      questionRepo.postCreateQuestion(createRequest);

  @override
  void getAllEmployee() async {
    listEmployee = await userRepo.getAllEmployee();
    notifyListeners();
  }

  @override
  void addEmployee(Employee employee) {
    userRepo.addEmployment(employee);
    listEmployee.add(employee);
    notifyListeners();
  }

  @override
  void deleteAllEmployee() {
    userRepo.deleteAllEmploye();
    listEmployee.clear();
    notifyListeners();
  }
}
