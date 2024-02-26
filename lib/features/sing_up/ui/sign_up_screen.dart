import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/widgets/main_text.dart';
import 'package:graduation_project/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:graduation_project/features/sing_up/logic/cubit/sign_up_cubit.dart';
import 'package:graduation_project/features/sing_up/ui/widgets/already_have_account_text.dart';
import 'package:graduation_project/features/sing_up/ui/widgets/sign_up_bloc_listenter.dart';
import 'package:graduation_project/features/sing_up/ui/widgets/sign_up_form.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MainText(),
                verticalSpace(8),
                Text(
                  'إنضم إلى مجتمعنا الخيرى لمساعده بعضنا البعض',
                  style: TextStyles.font15GraySemiBold,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: TextStyles.font16whiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSingupState();
    }
  }
}
