import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/ui/pages/home/index_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'data/model/entity/department.dart';
import 'data/model/entity/job.dart';
import 'ui/pages/home/home_page.dart';
// import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final appDocumentDirPath =
  // await path_provider.getApplicationDocumentsDirectory();

  await Hive.initFlutter();
  Hive
    ..registerAdapter(EmployeeAdapter())
    ..registerAdapter(JobAdapter())
    ..registerAdapter(DepartmentAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => IndexPage(),
          },
        ));
  }
}


