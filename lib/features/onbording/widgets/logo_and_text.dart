import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/main_text.dart';

import '../../../core/helper/spacing.dart';

class LogoAndTextOnBoarding extends StatelessWidget {
  const LogoAndTextOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('asset/svg/logo.svg'),
        horizontalSpace(15.w),
       const MainText()
      ],
    );
  }
}
