import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/di/dependency_injection.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/graduation_app.dart';

void main() async {
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(GraduationApp(
    appRoute: AppRoute(),
  ));
}
