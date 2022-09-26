import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../viewmodel/user/profile_viewmodel.dart';


class DetailPage extends ConsumerWidget {

  @override
  Widget build(BuildContextacontext, WidgetRef ref) {
    final apiProvider = ref.watch(personaViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: apiProvider.when(
              data: (data) => showUserWidget(data.email),
              error: (err, stack) => Text("Errror: ${err.toString()}"),
              loading: () => CircularProgressIndicator(color: Colors.blue,)
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
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
