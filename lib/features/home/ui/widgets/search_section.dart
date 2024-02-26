import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/widgets/app_text_form_field.dart';
import 'package:graduation_project/features/home/ui/widgets/slider_drawer.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFromField(
      hintText: 'Search',
      validation: (value) {},
      suffixIcon: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
          
          }),
      prefixIcon: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: const CircleAvatar(
          radius: 14,
          child: Image(
            image: AssetImage('asset/images/prosearch.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
