import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/features/onbording/widgets/get_started_button.dart';
import 'package:graduation_project/features/onbording/widgets/logo_and_text.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            verticalSpace(50.h),
            const LogoAndTextOnBoarding(),
            const Spacer(),
            const GetStartedButton(),
            verticalSpace(50.h)
          ]),
        ),
      ),
    );
  }
}
