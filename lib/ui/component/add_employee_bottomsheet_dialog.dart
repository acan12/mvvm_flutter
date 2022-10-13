import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/viewmodel/provider/question_provider.dart';

import '../../data/model/entity/employee.dart';
import '../../viewmodel/provider/employee_provider.dart';

TextEditingController nameController = new TextEditingController();
TextEditingController emailController = new TextEditingController();

Widget showAddQuestionBottomSheet(WidgetRef ref, BuildContext context) {
  final questionViewModel = ref.watch(questionPageProvider);
  return Container(
    margin: new EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: TextFormField(
            controller: nameController,
            decoration: new InputDecoration(
                hintText: "Masukan nama employee anda",
                labelText: "Nama Karyawan",
                border: OutlineInputBorder(),
                icon: Icon(Icons.question_mark)),
          ),
        ),
        TextFormField(
          controller: emailController,
          decoration: new InputDecoration(
              hintText: "Email anda",
              labelText: "Email",
              border: OutlineInputBorder(),
              icon: Icon(Icons.verified_user_outlined)),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(100, 50)),
                  onPressed: () {
                    var snackBar = SnackBar(content: Text(nameController.text));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    questionViewModel
                      ..addEmployee(Employee(nameController.text,
                          nameController.text, "30", emailController.text));

                    ref.read(allEmployeeProvider.future);

                    nameController.clear();
                    emailController.clear();

                    Navigator.pop(context);
                    // Navigator.pushNamed(context, "Local");
                  },
                  child: Text("Simpan"))),
        )
      ],
    ),
  );
}
