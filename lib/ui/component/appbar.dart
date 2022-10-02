import 'package:flutter/material.dart';

import '../../data/model/entity/question.dart';

topAppBarComponent(String title) => AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(title),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.list)),
      ],
    );

listViewComponent(List<Question> questions) => Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          String title = questions[index].question;
          String desc = questions[index].answer;

          return makeCard(title, desc);
        },
      ),
    );

makeCard(String title, String description) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(title, description),
      ),
    );

makeListTile(String title, String description) => ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.white24))),
      child: Icon(Icons.question_mark, color: Colors.white),
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        Icon(Icons.linear_scale, color: Colors.yellowAccent),
        Text(" $description", style: TextStyle(color: Colors.white))
      ],
    ),
    trailing:
        Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));
