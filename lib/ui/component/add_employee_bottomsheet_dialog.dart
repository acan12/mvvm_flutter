import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_demo/viewmodel/question/question_viewmodel.dart';

import '../../data/model/entity/employee.dart';

TextEditingController nameController = new TextEditingController();
TextEditingController emailController = new TextEditingController();

Widget showAddQuestionBottomSheet(
    QuestionPageViewModel viewModel, BuildContext context) {
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

                    viewModel
                      ..addEmployee(Employee(nameController.text,
                          nameController.text, "30", emailController.text))
                      ..getAllEmployee();
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
