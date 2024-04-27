import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';

class PostItems extends StatelessWidget {
  const PostItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image(
            image: const AssetImage('asset/images/postimage.png'),
            height: 300.h,
            width: 400.w,
            fit: BoxFit.fill,
          ),
          verticalSpace(16),
          const Text('جبت دا و مجاش على مقاسى لو حد محتاجهم'),
          verticalSpace(20),
          const Text('الوصف'),
          verticalSpace(10),
          const Text('################################'),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text('منذ اسبوعين'),
                  horizontalSpace(4),
                  const Icon(Icons.timer_outlined)
                ],
              ),
              Row(
                children: [
                  const Text('سوهاج'),
                  horizontalSpace(4),
                  const Icon(Icons.location_city_outlined)
                ],
              ),
              Row(
                children: [
                  const Text('ملابس'),
                  horizontalSpace(4),
                  const Icon(Icons.category_outlined)
                ],
              ),
            ],
          ),
          verticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Lein Amin'),
              horizontalSpace(25),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("asset/images/pro.png"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          verticalSpace(10),
          AppTextButton(
              buttonText: 'التفاصيل',
              textStyle: TextStyles.font16whiteSemiBold,
              onPressed: () {
                context.pushNamed(Routes.details);
              })
        ],
      ),
    );
  }
}
