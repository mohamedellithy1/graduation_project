import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_form_field.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/core/widgets/main_text.dart';
import 'package:graduation_project/core/widgets/privacy_policy_text.dart';
import 'package:graduation_project/features/login/ui/widgets/remember_me.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              verticalSpace(35.h),
              const Center(
                  child: MainText()),
              verticalSpace(8.h),
              Center(child: Text('خير الناس أنفعهم لغيره' , style: TextStyles.font20Black700Weight,)),
              verticalSpace(110.h),
              const AppTextFromField(hintText: 'Email' ,),
              verticalSpace(24.h),
              const AppTextFromField(hintText: 'Password' ,),
              //const RememberMe()
              verticalSpace(110.h),
              const AppTextButton(pushNamed: 'pushNamed', text: 'Login'),
              verticalSpace(70.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: const PrivacyPolicyText(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
