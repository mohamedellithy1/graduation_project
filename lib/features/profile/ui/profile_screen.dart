import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/features/profile/ui/widgets/profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.h,
          title: const Text('الملف الشخصي'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'Nada',
                  style: TextStyles.font24BlackBold,
                ),
                horizontalSpace(20),
                const ProfileImage(),
              ]),
              verticalSpace(50),
              AppTextButton(
                  buttonHeight: 60.h,
                  buttonText: 'اضافه منشور',
                  textStyle: TextStyles.font16whiteSMedium,
                  onPressed: () {
                    context.pushNamed(Routes.addPost);
                  }),
              verticalSpace(30),
              AppTextButton(
                  buttonHeight: 60.h,
                  buttonText: 'تسجيل الخروج ',
                  textStyle: TextStyles.font16whiteSMedium,
                  onPressed: () {
                    context.pushNamed(Routes.addPost);
                  })
            ],
          ),
        ));
  }
}
