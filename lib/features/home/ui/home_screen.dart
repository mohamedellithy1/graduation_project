import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/features/home/ui/widgets/list_view_posts.dart';
import 'package:graduation_project/features/home/ui/widgets/search_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lessLightGray,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          children: [
            const SearchSection(),
            verticalSpace(12),
            const Expanded(child: ListViewPosts())
          ],
        ),
      )),
    );
  }
}
