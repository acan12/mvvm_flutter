import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';
import 'package:freezed_demo/viewmodel/question_service.dart';
import 'package:mocktail/mocktail.dart';

class MockQuestionService extends Mock implements QuestionService {}

void main() {
  late QuestionPageViewModel viewmodel;
  late MockQuestionService service;

  setUp(() {
    viewmodel = QuestionPageViewModel();
    service = MockQuestionService();
  });

  test(
    "initial values are correct",
    () {
      expect(viewmodel.listEmployee, []);
    },
  );

  group('get questions', () {
    test('get questions from api', () async {
      // when(() => service.getQuestions()).thenAnswer((_) async => []);
      await viewmodel.getQuestions();
      verify(() => service.getQuestions()).called(1);
    });
  });

  // testWidgets('Test Widget', (widgetTester) async {});
}
