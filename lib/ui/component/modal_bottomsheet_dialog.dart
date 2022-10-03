import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dialogBottomSheet(BuildContext context) => Container(
      margin: new EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            decoration: new InputDecoration(
                hintText: "Masukan yang mau ditanyakan",
                labelText: "Pertanyaan Lengkap",
                icon: Icon(Icons.question_mark)),
          ),
          TextFormField(
            decoration: new InputDecoration(
              hintText: "Masukan jawaban anda",
              labelText: "Jawaban",
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 50)),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "Local");
                  }, child: Text("Simpan"))),
        ],
      ),
    );
