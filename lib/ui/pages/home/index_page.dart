import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Index"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
              onPressed: () {},
              child: Text(
                "Go To Home",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
