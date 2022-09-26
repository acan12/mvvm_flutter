import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../../../data/config.dart';
import '../../../data/model/entity/employee.dart';
import '../../../viewmodel/user/profile_viewmodel.dart';

class HomePage extends ConsumerWidget {

  @override
  Widget build(BuildContextacontext, WidgetRef ref) {
    final personalProvider = ref.watch(personaViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: personalProvider.when(
        data: (data) => Text("The name is : ${data.full_name}"),
        error: (err, stack) => Text("Errror: ${err.toString()}"),
        loading: () => CircularProgressIndicator(color: Colors.blue,)
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          deleteAllEmployeFromLocalDB();
          // ref.read(myprovider.notifier).state++;
          addEmployeeToLocalDB(Employee("MacD1", "Dono Warkop", "25", "dono1@hotmail.com"));
          addEmployeeToLocalDB(Employee("Kfc2", "Amir Ottopay", "30", "amir2@ottomail.com"));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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

