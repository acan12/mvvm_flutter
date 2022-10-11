import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/ui/component/appbar.dart';
import 'package:freezed_demo/ui/component/bottom_menu_navigation.dart';
import 'package:freezed_demo/ui/uiconfig.dart';

import '../../../viewmodel/provider/question_provider.dart';


class ApiPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsProvider = ref.watch(allQuestionProvider);
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBarComponent(UiConfig.titleListQuestion),
      bottomNavigationBar: bottomMenuNavigation,
      body: Container(
          child: questionsProvider.when(
        data: (data) => listViewComponent(data.data.questions, context),
        error: (err, stack) => Text("Errror: ${err.toString()}"),
        loading: () => Center(child: CircularProgressIndicator(color: Colors.blue,),)
      )),
    );
  }

  Widget getColumn(String value) {
    // final db = fetchAllEmployeeFromLocalDB();
    // db.whenComplete(() => )
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Your Value',
          style: TextStyle(fontSize: 14),
        ),
        Text(
          '$value',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


