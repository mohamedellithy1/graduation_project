import 'package:flutter/material.dart';
import 'package:graduation_project/core/di/dependency_injection.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/graduation_app.dart';

void main() {
  setUpGetIt();
  runApp(GraduationApp(
    appRoute: AppRoute(),
  ));
}
