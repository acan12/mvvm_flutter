import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';
import 'package:hive/hive.dart';
import '../../../data/config.dart';
import '../../../data/model/entity/employee.dart';

class HomePage extends ConsumerWidget {

  @override
  Widget build(BuildContextacontext, WidgetRef ref) {
    final questionsProvider = ref.watch(allQuestionProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Api"),
      ),
      body: Center(
          child: questionsProvider.when(
        data: (data) => Text("Count of Question you have are : ${data.data?.questions.length} item"),
        error: (err, stack) => Text("Errror: ${err.toString()}"),
        loading: () => CircularProgressIndicator(color: Colors.blue,)
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

  addEmployeeToLocalDB(Employee employee) async {
    var employees = await Hive.openBox<Employee>(DB_EMPLOYEE);
    employees.add(employee);
  }

  deleteAllEmployeFromLocalDB() async {
    var employees = await Hive.openBox<Employee>(DB_EMPLOYEE);
    employees.clear();
  }
}


