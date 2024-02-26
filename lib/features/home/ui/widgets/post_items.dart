import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/styles.dart';

class PostItems extends StatelessWidget {
  const PostItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              horizontalSpace(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nour Ahmed',
                    style: TextStyles.font20BlackSimiBold,
                  ),
                  Text(
                    '2 days ago',
                    style: TextStyles.font14GrayRegular,
                  )
                ],
              ),
            ],
          ),
          verticalSpace(16),
          const Text('جبت دا و مجاش على مقاسى لو حد محتاجهم'),
          verticalSpace(20),
          Image(
            image: const AssetImage('asset/images/postimage.png'),
            height: 300.h,
            width: 400.w,
            fit: BoxFit.fill,
          ),
        ],
        
      ),
    );
  }
}
