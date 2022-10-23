import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_demo/data/model/response/base_response.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/viewmodel/question_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'question_repo_test.mocks.dart';

class QuestionRepoTest extends Mock implements QuestionService {}

@GenerateMocks([QuestionRepoTest])
Future<void> main() async {
  late MockQuestionRepoTest mockRepo;

  setUpAll(() {
    mockRepo = MockQuestionRepoTest();
  });

  group('questions repo test', () {
    test('test get list of question', () async {
      final model = QuestionResponse(
          meta: Meta(code: 200, message: 'Ok'), data: Data(questions: []));

      when(mockRepo.getQuestions()).thenAnswer((_) async {
        return model;
      });

      final res = await mockRepo.getQuestions();

      expect(res, isA<QuestionResponse>());
      expect(res, model);
    });

    test('test get detail of question', () async {});

    test('test add employee', () async {});

    test('test remote all employee', () async {});
  });
}
