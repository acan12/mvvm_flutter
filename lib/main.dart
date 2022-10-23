import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_demo/data/model/entity/employee.dart';
import 'package:freezed_demo/routes.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final appDocumentDirPath =
  // await path_provider.getApplicationDocumentsDirectory();
  // GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  await Hive.initFlutter();
  Hive
    ..registerAdapter(EmployeeAdapter());
    // ..registerAdapter(JobAdapter())
    // ..registerAdapter(DepartmentAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp.router(
          routerDelegate: goRouter.routerDelegate,
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
        ));
  }
}


