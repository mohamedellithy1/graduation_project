import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen(
      {super.key, this.image, this.nPhone, this.location, this.name});
  final String? image;
  final String? nPhone;
  final String? location;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("التفاصيل"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('$name', style: TextStyles.font20Black700Weight),
              horizontalSpace(25),
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(image!), fit: BoxFit.cover)),
              ),
            ],
          ),
          verticalSpace(40),
          Container(
            height: 70.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: ColorsManager.lighterGray,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(10),
                Text(
                  '$nPhone',
                  style: TextStyles.font15GraySemiBold,
                ),
                horizontalSpace(30),
                Text(
                  ' :  رقم الهاتف',
                  style: TextStyles.font15GraySemiBold,
                )
              ],
            ),
          ),
          verticalSpace(25),
          Container(
            height: 200.h,
            width: 350.w,
            decoration: BoxDecoration(
                color: ColorsManager.lighterGray,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(10),
                Text(
                  '$location',
                  maxLines: 4,
                  style: TextStyles.font15GraySemiBold,
                ),
                horizontalSpace(30),
                Text(
                  ' :  العنوان ',
                  style: TextStyles.font15GraySemiBold,
                )
              ],
            ),
          ),
          verticalSpace(50),
          AppTextButton(
              buttonText: 'تـــــــم',
              textStyle: TextStyles.font16withSemiBold,
              onPressed: () {
                Navigator.pop(context);
              })
        ]),
      ),
    );
  }
}
