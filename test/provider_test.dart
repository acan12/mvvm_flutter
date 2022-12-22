//
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:freezed_demo/viewmodel/provider/question_provider.dart';
// import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';
// import 'package:freezed_demo/viewmodel/question_service.dart';
//
// import 'question_viewmodel_test.mocks.dart';
//
// Future<void> main() async {
//   late MockQuestionPageViewModelTest viewModel;
//
//   setUpAll(() {
//     viewModel = MockQuestionPageViewModelTest();
//   });
//
//   testWidgets('override all question provider', (tester) async {
//     await tester.pumpWidget(
//       ProviderScope(
//         overrides: [
//           allQuestionProvider.overrideWithProvider(viewModel)
//         ], child: Scaffold(
//         backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
//         body: Container(
//             child: questionsProvider.when(
//                 data: (data) => listViewComponent(data.data.questions, context),
//                 error: (err, stack) => Text("Errror: ${err.toString()}"),
//                 loading: () => Center(child: CircularProgressIndicator(color: Colors.blue,),)
//             )),
//       ),)
//     );
//   });
// }