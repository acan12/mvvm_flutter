import '../data/model/entity/employee.dart';
import '../data/model/response/question/question_detail_response.dart';
import '../data/model/response/question/question_response.dart';

abstract class QuestionService {
  Future<QuestionResponse> getQuestions();

  Future<QuestionDetailResponse> getDetailQuestion();

  void getAllEmployee();

  void addEmployee(Employee employee);

  void deleteAllEmployee();
}
