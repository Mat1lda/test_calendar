import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_calendar/components/app_colors.dart';
import 'package:test_calendar/pages/task_schedule/home_task_view.dart';
import 'package:test_calendar/pages/task_schedule/task_schedule_view.dart';
import 'package:test_calendar/pages/time_table/custom_timetable_screen.dart';


import '../../utils/tab_button.dart';
import '../home/home.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,// dinh vi FAB chinh giua, gan lien voi day
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: AppColors.primaryG),
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 2),
              ],
            ),
            child: Icon(Icons.search, color: AppColors.white, size: 35),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          // decoration: BoxDecoration(
          //   color: AppColors.white,
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black12,
          //       blurRadius: 2,
          //       offset: Offset(0, -2),
          //     ),
          //   ],
          // ),
           //chieu cao tieu chuan cua appbar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,//chia deu cac widget
            children: [
              TabButton(
                icon: "assets/images/home_tab.png",
                selectIcon: "assets/images/home_tab_select.png",
                isActive: selectTab == 0,
                onTap: () {
                  selectTab = 0;
                  currentTab = HomeView();
                  if (mounted) {
                    //tranh loi khi cap nhat UI
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: "assets/images/activity_tab.png",
                selectIcon: "assets/images/activity_tab_select.png",
                isActive: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                  currentTab = HomeTaskView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),

              const SizedBox(width: 40),
              TabButton(
                icon: "assets/images/profile_tab.png",
                selectIcon: "assets/images/profile_tab_select.png",
                isActive: selectTab == 2,
                onTap: () {
                  selectTab = 2;
                  currentTab = CustomTimetableScreem();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: "assets/images/profile_tab.png",
                selectIcon: "assets/images/profile_tab_select.png",
                isActive: selectTab == 3,
                onTap: () {
                  selectTab = 3;
                  currentTab = HomeView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
