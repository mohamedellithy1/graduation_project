import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.image, this.nameOfCategory});
  final String? image;
  final String? nameOfCategory;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image!,
              height: 70.h,
              width: 50.w,
            ),
            Text(
              '$nameOfCategory',
              style: const TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 53, 52, 52)),
            ),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
