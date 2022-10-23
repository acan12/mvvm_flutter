import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_demo/data/model/response/base_response.dart';
import 'package:freezed_demo/data/model/response/question/question_response.dart';
import 'package:freezed_demo/viewmodel/question_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'question_viewmodel_test.mocks.dart';

class QuestionPageViewModelTest extends Mock implements QuestionService {}

@GenerateMocks([QuestionPageViewModelTest])
Future<void> main() async {
  late MockQuestionPageViewModelTest viewModel;

  setUpAll(() {
    viewModel = MockQuestionPageViewModelTest();
  });

  group('question viewmodel', () {
    test('test get list of question', () async {
      final model = QuestionResponse(
          meta: Meta(code: 200, message: 'Ok'), data: Data(questions: []));

      when(viewModel.getQuestions()).thenAnswer((_) async {
        return model;
      });
      final res = await viewModel.getQuestions();

      expect(res, model);
    });
  });
}
