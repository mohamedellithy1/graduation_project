import 'package:flutter/material.dart';
import 'package:graduation_project/core/helper/app_pref.dart';
import 'package:graduation_project/features/login/data/models/login_request_body.dart';
import 'package:graduation_project/features/login/data/repo/login_repo.dart';
import 'package:graduation_project/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final AppPreferences pref;

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    response.when(success: (loginResponse) {
      final token = loginResponse.token;
      final userId = loginResponse.data!.user!.id;

      // pref.setToken(token!);
      // pref.setUserId(userId!);
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(message: error.apiErrorModel.message ?? ''));
    });
  }
}
