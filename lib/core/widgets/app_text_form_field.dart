import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFromField extends StatelessWidget {
  final String hintText ;
  final EdgeInsetsGeometry? contentPadding ;
  final TextStyle? hintStyle ;
  final InputBorder? focusedBorder ;
  final InputBorder? enabledBorder ;
  final TextStyle? inputTextStyle ;
  final bool? isObscureText ;
  final Widget? suffixIcon ;
  const AppTextFromField({super.key,
   required this.hintText,
    this.contentPadding,
     this.hintStyle, 
     this.focusedBorder,
      this.enabledBorder, 
      this.inputTextStyle,
       this.isObscureText, 
       this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding?? EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 18.h,
        ),
        focusedBorder: focusedBorder?? OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.mainBlue ,width: 1.3), 
          borderRadius: BorderRadius.circular(16)
        ),
        enabledBorder: enabledBorder?? OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.lighterGray , width: 1.3),
          borderRadius: BorderRadius.circular(16)
           ), 
           hintStyle: hintStyle?? TextStyles.font14GrayRegular,
           hintText: hintText, 
           suffixIcon: suffixIcon, 
        fillColor: ColorManager.moreLightGray, 
        filled: true
              ),
      obscureText: isObscureText?? false,
      style: TextStyles.font14DarkBlueMeduim,
    );
  }
}