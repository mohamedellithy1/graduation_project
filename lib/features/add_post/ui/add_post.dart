import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/core/widgets/app_text_form_field.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('إضافه منشور'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.photo_album_outlined,
                      size: 30,
                      color: ColorsManager.gray,
                    ),
                    horizontalSpace(10),
                    const Text('إضافه صوره',
                        style:
                            TextStyle(fontSize: 20, color: ColorsManager.gray))
                  ],
                ),
                verticalSpace(20), // Add some vertical space between the rows
                Row(
                  children: [
                    Image.asset(
                      'asset/images/NotePencil.png',
                      height: 39.h,
                      width: 39.w,
                    ),
                    horizontalSpace(10),
                    Expanded(
                      child: AppTextFromField(
                        hintText: 'إضافه نص',
                        validation: (v) {},
                      ),
                    ),
                  ],
                ),
                verticalSpace(20), // Add some vertical space between the rows
                Row(
                  children: [
                    Image.asset(
                      'asset/images/NavigationArrow.png',
                      height: 39.h,
                      width: 39.w,
                    ),
                    horizontalSpace(10),
                    Expanded(
                      child: AppTextFromField(
                        hintText: 'إضافة عنوان',
                        validation: (v) {},
                      ),
                    ),
                  ],
                ),
                verticalSpace(20), // Add some vertical space between the rows
                Row(
                  children: [
                    Image.asset(
                      'asset/images/vv.png',
                      height: 39.h,
                      width: 39.w,
                    ),
                    horizontalSpace(10),
                    Expanded(
                      child: AppTextFromField(
                        hintText: 'إضافة الصنف ',
                        validation: (v) {},
                      ),
                    ),
                  ],
                ),
                verticalSpace(20), // Add some vertical space between the rows
                SizedBox(
                  height: 200.h,
                  child: AppTextFromField(
                    maxLines: 50,
                    minLines: 1,
                    hintText: 'إضافة وصف',
                    validation: (v) {},
                  ),
                ),
                verticalSpace(20), // Add some vertical space between the rows
                AppTextButton(
                  buttonText: 'إضافة',
                  textStyle: TextStyles.font16whiteSMedium,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
