import 'package:flutter/material.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/features/all_category/ui/widgets/category_item.dart';
import 'package:graduation_project/features/all_category/ui/widgets/user_info.dart';

class AllCategoryScreen extends StatelessWidget {
  AllCategoryScreen({super.key});
  final List<String> images = [
    'asset/images/1.png',
    'asset/images/2.png',
    'asset/images/3.png',
    'asset/images/4.png',
    'asset/images/5.png',
    'asset/images/6.png',
    'asset/images/7.png',
  ];
  List<String> nameOfCategory = [
    'ملابس',
    'اجهزه منزليه',
    'شنط و احذيه',
    'اثاث و ديكور',
    'أدوات تعليمة',
    'اكسسواوات',
    'ترفيه و تسليه',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          UserInfo(),
          verticalSpace(20),
          Expanded(
            child: ListView.builder(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      context.pushNamed(Routes.categoryList,
                          arguments: {'categoryName': nameOfCategory[index]});
                    },
                    child: CategoryItem(
                      image: images[index],
                      nameOfCategory: nameOfCategory[index],
                    ),
                  );
                }),
          ),
        ]));
  }
}
