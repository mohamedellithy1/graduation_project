import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/theming/colors.dart';
import 'package:graduation_project/features/all_category/logic/get_category_cubit.dart';
import 'package:graduation_project/features/all_category/logic/get_category_state.dart';
import 'package:graduation_project/features/all_category/ui/widgets/categort_item_by_name.dart';
import 'package:graduation_project/features/home/logic/cuibit_paid/get_last_10_posts_paid_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ListViewItemByCategory extends StatefulWidget {
  const ListViewItemByCategory({super.key, this.categoryName});
  final String? categoryName;

  @override
  State<ListViewItemByCategory> createState() => _ListViewPostsPaidState();
}

class _ListViewPostsPaidState extends State<ListViewItemByCategory> {
  String? token;
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('token'));
    return prefs.getString('token');
  }

  Future<void> fetchData() async {
    token = await getToken();
  }

  @override
  void initState() {
    fetchData().then((v) {
      context
          .read<GetCategoryCubit>()
          .getCategory(category: 'أخري', token: 'Bearer $token');
    });
    print('aaaaaaaaaaa${widget.categoryName.toString()}');
    print('aaaaaaaaaaa${token}');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.categoryName!),
          elevation: 0,
          scrolledUnderElevation: 0,
          centerTitle: true,
        ),
        body: BlocBuilder<GetCategoryCubit, GetCategoryState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                ],
              ),
              success: (r) => Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                            child: CategortItemByName(
                              indexx: index,
                              categoryName: widget.categoryName ?? '',
                            ),
                          ),
                      itemCount:
                          context.read<GetCategoryCubit>().categoryy?.length)),
              failuer: (error) => Center(
                child: InkWell(
                  onTap: () {
                    context.read<GetCategoryCubit>().getCategory(
                          category: widget.categoryName!,
                          token: token!,
                        );
                  },
                  child: const Icon(
                    Icons.refresh,
                    color: ColorsManager.mainBlue,
                    size: 30,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
