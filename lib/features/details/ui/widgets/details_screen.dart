import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/core/theming/styles.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("التفاصيل"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Lein Amin', style: TextStyles.font20Black700Weight),
              horizontalSpace(25),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("asset/images/pro.png"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          verticalSpace(40),
          Container(
            height: 70.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: ColorsManager.lighterGray,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(10),
                Text(
                  '01273960184',
                  style: TextStyles.font15GraySemiBold,
                ),
                horizontalSpace(30),
                Text(
                  ' :  رقم الهاتف',
                  style: TextStyles.font15GraySemiBold,
                )
              ],
            ),
          ),
          verticalSpace(25),
          Container(
            height: 70.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: ColorsManager.lighterGray,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(10),
                Text(
                  'moh@gmail.com',
                  style: TextStyles.font15GraySemiBold,
                ),
                horizontalSpace(30),
                Text(
                  ' :  البريد الإلكتروني',
                  style: TextStyles.font15GraySemiBold,
                )
              ],
            ),
          ),
          verticalSpace(25),
          Container(
            height: 200.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: ColorsManager.lighterGray,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(10),
                Text(
                  'القاهره الف مسكن , جسر السويس',
                  maxLines: 4,
                  style: TextStyles.font15GraySemiBold,
                ),
                horizontalSpace(30),
                Text(
                  ' :  العنوان ',
                  style: TextStyles.font15GraySemiBold,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
