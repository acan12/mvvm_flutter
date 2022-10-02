import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_demo/routes.dart';
import 'package:freezed_demo/ui/uiconfig.dart';
import 'package:go_router/go_router.dart';

import '../../component/appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: const TextStyle(fontSize: 14),
      minimumSize: Size(150, 50),
      shadowColor: Colors.greenAccent,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
    );

    return Scaffold(
      appBar: topAppBarComponent(UiConfig.titleMain),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              style: style,
              onPressed: () => context.go("/$routeApi"),
              child: const Text('Demo Api'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: style,
              onPressed: () => context.go("/${routeLocal}/1"),
              child: const Text('Demo local data'),
            ),
          ],
        ),
      ),
    );
  }
}
