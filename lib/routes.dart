import 'package:flutter/material.dart';
import 'package:freezed_demo/ui/pages/error_page.dart';
import 'package:freezed_demo/ui/pages/home/detail_page.dart';
import 'package:freezed_demo/ui/pages/home/home_page.dart';
import 'package:freezed_demo/ui/pages/home/index_page.dart';
import 'package:go_router/go_router.dart';

const String routeIndex = '/';
const String routeHome = 'home';
const String routeDetail = 'detail';

final goRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: [
    GoRoute(
        path: routeIndex,
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: IndexPage()),
        routes: [
          GoRoute(
              path: routeHome,
              pageBuilder: (context, state) =>
                  MaterialPage(key: state.pageKey, child: HomePage())),
          GoRoute(
              path: routeDetail,
              pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: DetailPage(extra: state.extra as String)))
        ]),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: ErrorPage(exception: state.error),
  ),
);
