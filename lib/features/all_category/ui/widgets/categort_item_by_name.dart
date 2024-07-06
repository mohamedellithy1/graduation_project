import 'dart:convert';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helper/extensions.dart';
import 'package:graduation_project/core/helper/spacing.dart';
import 'package:graduation_project/core/routes/routes.dart';
import 'package:graduation_project/core/theming/styles.dart';
import 'package:graduation_project/core/widgets/app_text_button.dart';
import 'package:graduation_project/features/all_category/data/model/get_category_response.dart';
import 'package:graduation_project/features/all_category/logic/get_category_cubit.dart';
import 'package:graduation_project/features/home/data/models/get_home_data_model/get_home_data_paid_response.dart';
import 'package:graduation_project/features/home/ui/widget/full_image_view.dart';

class CategortItemByName extends StatelessWidget {
  const CategortItemByName(
      {super.key,
      required this.indexx,
      required this.categoryName,
      required this.postsss});
  final int indexx;
  final String categoryName;
  final List<Posts> postsss;

  @override
  Widget build(BuildContext context) {
    // final postss = context.read<GetCategoryCubitS>().categoryy;
    print(':>>>>>>>>>>>>>A>A>>>>>>>>>>>>>>A${postsss.toString()}');

    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.h,
            child: Swiper(
              itemCount: postsss![indexx].images!.length,
              pagination: const SwiperPagination(),
              control: SwiperControl(),
              itemBuilder: (BuildContext context, int index) {
                // debugPrint(
                //     'image >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>${postss![indexx].createdAt}');

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullScreenImageViewer(
                            imageUrl: '${postsss![indexx].images![index].url}'),
                      ),
                    );
                  },
                  child:
                      //  Image.asset('asset/images/pro.png')
                      Image.network('${postsss![indexx].images![index].url}'),
                );
              },
            ),
          ),
          verticalSpace(16),
          Text(
              // categoryName
              '${postsss?[indexx].content}'),
          verticalSpace(20),
          const Text('الوصف'),
          verticalSpace(10),
          Text(
              // 'ladadad'
              '${postsss?[indexx].content}'),
          const Text('الوصف'),
          verticalSpace(10),
          postsss?[indexx].price == null
              ? const SizedBox.shrink()
              : Text('${postsss?[indexx].price ?? ''}'),
          verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                      // 'اسبوعين'
                      TimeAgoFormatter(postsss?[indexx].createdAt).toString()),
                  horizontalSpace(4),
                  const Icon(Icons.timer_outlined)
                ],
              ),
              Row(
                children: [
                  Text(
                      // 'طنطا'
                      '${postsss?[indexx].location}'),
                  horizontalSpace(4),
                  const Icon(Icons.place)
                ],
              ),
              Row(
                children: [
                  Text(
                      // 'مسمبسبسب'
                      '${postsss?[indexx].category}'),
                  horizontalSpace(4),
                  const Icon(Icons.category_outlined)
                ],
              ),
            ],
          ),
          verticalSpace(20),
          InkWell(
            onTap: () {
              context.pushNamed(Routes.details, arguments: {
                'image': postsss![indexx].user?.photo!.url.toString() ?? '',
                'location': postsss[indexx].location.toString() ?? '',
                'nPhone': postsss[indexx].user?.phone.toString() ?? '',
                'name': postsss[indexx].user?.name.toString() ?? ''
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                    // 'adddddd'
                    '${postsss![indexx].user!.name}'),
                horizontalSpace(25),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              // AssetImage('asset/images/pro.png'),
                              NetworkImage(
                                  '${postsss![indexx].user?.photo!.url}'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          verticalSpace(10),
          AppTextButton(
              buttonText: 'التفاصيل',
              textStyle: TextStyles.font16whiteSemiBold,
              onPressed: () {
                context.pushNamed(Routes.details, arguments: {
                  'image': postsss![indexx].user?.photo!.url.toString() ?? "",
                  'location': postsss[indexx].location.toString() ?? "",
                  'nPhone': postsss[indexx].user?.phone.toString() ?? "",
                  'name': postsss[indexx].user?.name.toString() ?? "",
                });
              })
        ],
      ),
    );
  }

  String TimeAgoFormatter(String? dateTimeString) {
    DateTime pastDateTime = DateTime.parse(dateTimeString!).toUtc();
    DateTime now = DateTime.now().toUtc();

    Duration difference = now.difference(pastDateTime);

    if (difference.inSeconds < 60) {
      return 'منذ ${difference.inSeconds} ثانية';
    } else if (difference.inMinutes < 60) {
      return 'منذ ${difference.inMinutes} دقيقة';
    } else if (difference.inHours < 24) {
      return 'منذ ${difference.inHours} ساعة';
    } else if (difference.inDays < 7) {
      return 'منذ ${difference.inDays} يوم';
    } else if (difference.inDays < 365) {
      final weeks = (difference.inDays / 7).floor();
      return 'منذ $weeks أسبوع';
    } else {
      final years = (difference.inDays / 365.25).floor();
      return 'منذ $years سنة';
    }
  }
}
