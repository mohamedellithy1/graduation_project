import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/widgets/app_text_form_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFromField(
        hintText: 'Search',
        validation: (value) {},
        suffixIcon: const Icon(Icons.search),
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 10.w, top: 10.h),
          child: Container(
            height: 25.0,
            width: 25.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("asset/images/pro.png"),
                    fit: BoxFit.cover)),
          ),
        ));
  }
}
