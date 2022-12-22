import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_demo/main.dart';
import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';
import 'package:freezed_demo/viewmodel/question_service.dart';
import 'package:mockito/mockito.dart';

class MockQuestionService extends Mock implements QuestionService {}

void main() {
  late QuestionPageViewModel viewmodel;

  setUp(() {
    viewmodel = QuestionPageViewModel();
  });

  test(
    "initial values are correct",
    () {
      expect(viewmodel.listEmployee, []);
    },
  );

  group('home page widget', () {
    testWidgets('home buttons widget', (tester) async {
      await tester.pumpWidget(ProviderScope(child: MyApp()));

      final widgetDemoApi = find.widgetWithText(ElevatedButton, "Demo Api");
      final widgetDemoLocal =
          find.widgetWithText(ElevatedButton, "Demo local data");

      expect(widgetDemoApi, findsOneWidget);
      expect(widgetDemoLocal, findsOneWidget);
    });
  });
}
