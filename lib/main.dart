
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberProvider = StateProvider<int>((ref) => 0);

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Sample")),
        body: Center(
          child: Text(
            ref.watch(numberProvider).toString())
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            ref.read(numberProvider.notifier).state++;
          },
        ),
      ),
    );
  }
}