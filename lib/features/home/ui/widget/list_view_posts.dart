import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/ui/widget/post_items.dart';

class ListViewPosts extends StatelessWidget {
  const ListViewPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
        child: const PostItems(),
      ),
      itemCount: 10,
    );
  }
}
