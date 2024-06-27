  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:graduation_project/core/di/dependency_injection.dart';
  import 'package:graduation_project/core/routes/routes.dart';
  import 'package:graduation_project/features/add_post/ui/add_post.dart';
  import 'package:graduation_project/features/all_category/ui/all_category_screen.dart';
import 'package:graduation_project/features/all_category/ui/widgets/item_by_category_name_view.dart';
  import 'package:graduation_project/features/details/ui/widgets/details_screen.dart';
  import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
  import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_cubit.dart';
  import 'package:graduation_project/features/home/ui/home_screen.dart';
  import 'package:graduation_project/features/home/ui/widget/list_view_post_paid.dart';
  import 'package:graduation_project/features/login/logic/cubit/login_cubit.dart';
  import 'package:graduation_project/features/login/ui/login_screen.dart';
  import 'package:graduation_project/features/onbording/onboarding_screen.dart';
  import 'package:graduation_project/features/profile/ui/profile_screen.dart';
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
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) =>
                        getIt<GetLast10PostsCubit>()..getLast10Posts(),
                    child: const HomeScreen(),
                  ));
        case Routes.homeScreenPaid:
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) =>
                        getIt<GetLast10PostsPaidCubit>()..getLast10Posts(),
                    child: const ListViewPostsPaid(),
                  ));

        case Routes.signupScreen:
          return MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => getIt<SignUpCubit>(),
                    child: const SignupScreen(),
                  ));
        case Routes.allCategory:
          return MaterialPageRoute(builder: (_) => AllCategoryScreen());
        case Routes.addPost:
          return MaterialPageRoute(builder: (_) => const AddPost());

        case Routes.details:
          return MaterialPageRoute(
              builder: (_) => Detailscreen(
                    image: (argument as Map<String, Object?>)["image"].toString(),
                    location: (argument)["location"].toString(),
                    nPhone: (argument)["nPhone"].toString(),
                    name: (argument)["name"].toString(),
                  ));
        case Routes.profile:
          return MaterialPageRoute(builder: (_) => const ProfileScreen());
           case Routes.categoryList:
          return MaterialPageRoute(builder: (_) =>  ListViewItemByCategory(
            categoryName:(argument as Map<String, Object?>)["categoryName"].toString(),

          ) );
        default:
          return MaterialPageRoute(
              builder: (_) => Center(
                    child: Text('No Route defined for ${settings.name}'),
                  ));
      }
    }
  }
