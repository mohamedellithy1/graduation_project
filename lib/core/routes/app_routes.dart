import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/di/dependency_injection.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/features/home/ui/home_screen.dart';
import 'package:graduation_project/features/login/logic/cubit/login_cubit.dart';
import 'package:graduation_project/features/login/ui/login_screen.dart';
import 'package:graduation_project/features/onbording/onboarding_screen.dart';
import 'package:graduation_project/features/sing_up/logic/cubit/sign_up_cubit.dart';
import 'package:graduation_project/features/sing_up/ui/sign_up_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signupScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignupScreen(),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No Route defined for ${settings.name}'),
                ));
    }
  }
}
