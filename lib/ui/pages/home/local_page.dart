import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import '../../../data/config.dart';
import '../../../data/model/entity/employee.dart';
import '../../../viewmodel/user/profile_viewmodel.dart';
import '../../component/modal_bottomsheet_dialog.dart';


class LocalPage extends ConsumerWidget {
  // final String extra;

  // const LocalPage({Key? key, required this.extra}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeesProvider = ref.watch(allEmployeeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Local"),
      ),
      body: Center(
          child: employeesProvider.when(
              data: (data) => showUserWidget(data.length.toString()),
              error: (err, stack) => Text("Errror: ${err.toString()}"),
              loading: () => CircularProgressIndicator(color: Colors.blue,)
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return dialogBottomSheet(context);
            });

          // deleteAllEmployeFromLocalDB();
          // // ref.read(myprovider.notifier).state++;
          // addEmployeeToLocalDB(Employee("MacD1", "Dono Warkop", "25", "dono1@hotmail.com"));
          // addEmployeeToLocalDB(Employee("Kfc2", "Amir Ottopay", "30", "amir2@ottomail.com"));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget showUserWidget(String value) {
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


