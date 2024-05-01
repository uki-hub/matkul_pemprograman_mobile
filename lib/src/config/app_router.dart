import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pemprograman_mobile/common/app_page_router.dart';
import 'package:pemprograman_mobile/src/view/pages/home/home_page.dart';

class AppRouter {
  AppRouter.__();

  static final AppRouter _ = AppRouter.__();

  factory AppRouter() => _;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    const router = AppPageRouter();

    switch (settings.name) {
      case '/':
        return router.to(const HomePage());

      default:
        return router.to(const Text('404'));
    }
  }
}

