import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/core/widgets/main_text.dart';
import 'package:graduation_project/features/login/logic/cubit/login_cubit.dart';
import 'package:graduation_project/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:graduation_project/features/login/ui/widgets/email_and_password.dart';
import 'package:graduation_project/features/login/ui/widgets/terms_and_conditions_text.dart';

import 'widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                verticalSpace(35.h),
                const Center(child: MainText()),
                verticalSpace(8.h),
                Center(
                    child: Text(
                  'خير الناس أنفعهم لغيره',
                  style: TextStyles.font20Black700Weight,
                )),
                verticalSpace(50.h),
                const EmailAndPassword(),
                verticalSpace(50.h),
                AppTextButton(
                  buttonText: 'login',
                  textStyle: TextStyles.font16whiteSemiBold,
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                verticalSpace(26.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const TermsAndConditionsText(),
                ),
                verticalSpace(20),
                const Center(child: DontHaveAccountText()),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
