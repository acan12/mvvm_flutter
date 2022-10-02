import 'package:flutter/material.dart';
import 'package:freezed_demo/ui/pages/error_page.dart';
import 'package:freezed_demo/ui/pages/home/local_page.dart';
import 'package:freezed_demo/ui/pages/home/api_page.dart';
import 'package:freezed_demo/ui/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

const String routeHome = '/';
const String routeApi = 'api';
const String routeLocal = 'local';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: routeHome,
  routes: [
    GoRoute(
        path: routeHome,
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: HomePage()),
        routes: [
          GoRoute(
              path: routeApi,
              pageBuilder: (context, state) =>
                  MaterialPage(key: state.pageKey, child: ApiPage())),
          GoRoute(
              path: routeLocal,
              pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: LocalPage(extra: state.extra as String)))
        ]),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(exception: state.error),
  ),
);
