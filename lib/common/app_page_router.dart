import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppPageRouter {
  const AppPageRouter();

  Route to(Widget page) {
    return MaterialPageRoute(builder: (_) => page);
  }

  Route toCupertino(Widget page) {
    return CupertinoPageRoute(builder: (_) => page);
  }
}