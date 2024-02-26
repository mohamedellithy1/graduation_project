import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font20Black700Weight = TextStyle(
      fontSize: 20.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorManager.mainBlue);
  static TextStyle font36BlueBold = TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      color: ColorManager.mainBlue);
  static TextStyle font24WhiteBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white);
  static TextStyle font13GrayRegular = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.bold, color: ColorManager.gray);

  static TextStyle font14GrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.gray);

  static TextStyle font14LightGrayRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.lighterGray);

  static TextStyle font14DarkBlueMeduim = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorManager.darkBlue);
  static TextStyle font16withSemiBold = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white);
}
