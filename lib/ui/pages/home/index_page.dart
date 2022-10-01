import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_demo/routes.dart';
import 'package:go_router/go_router.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 14));

    return Scaffold(
      appBar: AppBar(
        title: Text("Index"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: () => context.go("/$routeHome"),
              child: const Text('Demo Api'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.go("/${routeDetail}/1"),
              child: const Text('Demo Local'),
            ),
          ],
        ),
      ),
    );
  }
}
