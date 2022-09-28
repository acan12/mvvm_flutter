import 'package:flutter/material.dart';
import 'package:freezed_demo/ui/pages/error_page.dart';
import 'package:freezed_demo/ui/pages/home/detail_page.dart';
import 'package:freezed_demo/ui/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

const String routeHome = '/';
const String routeDetail = 'detail';

final Router = GoRouter(routes: [
  GoRoute(
      path: routeHome,
      pageBuilder: (context, state) =>
          MaterialPage(key: state.pageKey, child: HomePage()),
      routes: [
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
