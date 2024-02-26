import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFromField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final TextInputType? textInputType;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final TextEditingController? controller;
  final Function(String?) validation;
  const AppTextFromField(
      {super.key,
      required this.hintText,
      required this.validation,
      this.controller,
      this.textAlign,
      this.prefixIcon,
      this.textInputType,
      this.contentPadding,
      this.hintStyle,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.isObscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      //textAlign: textAlign,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 18.h,
              ),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: ColorsManager.mainBlue, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: ColorsManager.lighterGray, width: 1.3),
                  borderRadius: BorderRadius.circular(16)),
          hintStyle: hintStyle ?? TextStyles.font14GrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefix: prefixIcon,
          fillColor: ColorsManager.moreLightGray,
          filled: true),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMeduim,
      validator: (value) {
        return validation(value);
      },
    );
  }
}
