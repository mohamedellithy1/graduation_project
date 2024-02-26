import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/sing_up/data/models/sign_up_request_body.dart';
import 'package:graduation_project/features/sing_up/data/repo/sign_up_repo.dart';
import 'package:graduation_project/features/sing_up/logic/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  void emitSingupState() async {
    emit(const SignUpState.loading());
     final respons = await _signUpRepo.signup(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text, 
        password: passwordController.text,
        passwordConfirm: confirmPasswordController.text,
        ));
    respons.when(success: (signupResponse) {
      emit(SignUpState.success(signupResponse));
    }, failure: (erorr) {
      emit(SignUpState.failure(error: erorr.apiErrorModel.message ?? ''));
    });
  }
  }

