import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class GraduationApp extends StatelessWidget {
  final AppRoute appRoute;
  const GraduationApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Graduation App',
        theme: ThemeData(primaryColor: ColorManager.mainBlue,
        ),
        onGenerateRoute: appRoute.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
