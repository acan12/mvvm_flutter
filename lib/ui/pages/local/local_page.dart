import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/model/entity/employee.dart';
import '../../../viewmodel/provider/employee_provider.dart';
import '../../../viewmodel/provider/question_provider.dart';
import '../../component/add_employee_bottomsheet_dialog.dart';

class LocalPage extends ConsumerWidget {
  // final String extra;
  // const LocalPage({Key? key, required this.extra}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionViewModel = ref.watch(questionPageProvider);
    final listEmployees = ref.watch(allEmployeeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Local"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                questionViewModel
                  ..deleteAllEmployee()
                  ..getAllEmployee();
              },
              icon: Icon(Icons.delete)),
        ],
      ),
      body: Center(
          child: listEmployees.when(
              data: (data) => showWidgetEmployees(data),
              error: (err, stack) => Text("Errror: ${err.toString()}"),
              loading: () => Center(
                      child: CircularProgressIndicator(
                    color: Colors.blue,
                  )))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return showAddQuestionBottomSheet(ref, context);
              });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget showWidgetEmployees(List<Employee> employees) {
    return Container(
        child: employees.isEmpty
            ? Center(
                child: Text(
                  "Item is empty",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              )
            : ListView(
                children: [
                  for (final employee in employees)
                    ListTile(
                      leading: Icon(Icons.emoji_food_beverage),
                      title: Text(
                          "${employee.name} (${employee.email}), ${employee.age} old"),
                    )
                ],
              ));
  }
}
