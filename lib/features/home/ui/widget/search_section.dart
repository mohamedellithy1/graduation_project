import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/widgets/app_text_form_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AppTextFromField(
        hintText: 'بحث',
        validation: (value) {},
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    );
  }
}
