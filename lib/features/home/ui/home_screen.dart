import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/features/home/logic/cubit/get_last_10_posts_cubit.dart';
import 'package:graduation_project/features/home/ui/widget/list_view_posts.dart';
import 'package:graduation_project/features/home/ui/widget/search_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<GetLast10PostsCubit>().getLast10Posts();
  
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 7,
      child: Scaffold(
        backgroundColor: const Color(0XFFEBE8E8),
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: SizedBox(
              height: 50.h, width: 300.w, child: const SearchSection()),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Image.asset('asset/images/1.png'),
              ),
              Tab(
                child: Image.asset('asset/images/2.png'),
              ),
              Tab(
                child: Image.asset('asset/images/3.png'),
              ),
              Tab(
                child: Image.asset('asset/images/4.png'),
              ),
              Tab(
                child: Image.asset('asset/images/5.png'),
              ),
              Tab(
                child: Image.asset('asset/images/6.png'),
              ),
              Tab(
                child: Image.asset('asset/images/7.png'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewPosts(),
            ListViewPosts(),
            ListViewPosts(),
            ListViewPosts(),
            ListViewPosts(),
            ListViewPosts(),
            ListViewPosts(),
          ],
        ),
      ),
    );
  }
}
