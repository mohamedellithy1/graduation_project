import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation_project/core/networking/api_service.dart';
import 'package:graduation_project/core/networking/dio_factory.dart';
import 'package:graduation_project/features/add_post/data/repo/add_post_repo.dart';
import 'package:graduation_project/features/add_post/logic/cubit/add_post_cubit.dart';
import 'package:graduation_project/features/all_category/data/repo/get_category_repo.dart';
import 'package:graduation_project/features/all_category/logic/get_category_cubit.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';
import 'package:graduation_project/features/home/data/repo/home_repo.dart';
import 'package:graduation_project/features/home/data/repo/home_repo_paid.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_cubit.dart';
import 'package:graduation_project/features/login/data/repo/login_repo.dart';
import 'package:graduation_project/features/login/logic/cubit/login_cubit.dart';
import 'package:graduation_project/features/sing_up/data/repo/sign_up_repo.dart';
import 'package:graduation_project/features/sing_up/logic/cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // getIt.registerLazySingleton<SharedPreferences>(() => prefs);
  // getIt.registerLazySingleton<AppPreferences>(() => AppPreferences(prefs));
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));

  //signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory(() => SignUpCubit(getIt()));

  //home
  getIt.registerLazySingleton<GetLast10PostRepo>(
      () => GetLast10PostRepo(getIt()));
  getIt.registerFactory(() => GetLast10PostsCubit(getIt()));
  //homePaid
  getIt.registerLazySingleton<GetLast10PostPaidRepo>(
      () => GetLast10PostPaidRepo(getIt()));
  getIt.registerFactory(() => GetLast10PostsPaidCubit(getIt()));

  getIt.registerLazySingleton<GetCategoryRepo>(() => GetCategoryRepo(getIt()));
  getIt.registerFactory(() => GetCategoryCubitS(getIt()));

  getIt.registerLazySingleton<AddPostRepo>(() => AddPostRepo(getIt()));
  getIt.registerFactory(() => AddPostCubit(getIt()));
}
