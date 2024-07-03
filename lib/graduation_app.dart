import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/routes/app_routes.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GraduationApp extends StatefulWidget {
  final AppRoute appRoute;
  const GraduationApp({super.key, required this.appRoute});

  @override
  State<GraduationApp> createState() => _GraduationAppState();
}

class _GraduationAppState extends State<GraduationApp> {
  // late Future<bool> isLoginFuture;
  Future<bool> isLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("token>>>>>>>>>>>>>>>>> ${prefs.getBool('isLogined')}");

    return prefs.getBool('isLogined')!;
  }

  @override
  void initState() {
    // isLoginFuture =
    isLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Graduation App',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: ColorsManager.mainBlue,
        ),
        onGenerateRoute: widget.appRoute.generateRoute,
        initialRoute: isLogin == true
            ? Routes.onBoardingScreen
            : Routes.loginScreen,
      ),
    );
  }
}
