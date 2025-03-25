import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_calendar/components/app_colors.dart';
import 'package:test_calendar/pages/task_schedule/completed_task_view.dart';
import 'package:test_calendar/pages/task_schedule/task_schedule_view.dart';

class HomeTaskView extends StatefulWidget {
  @override
  State<HomeTaskView> createState() => _HomeTaskViewState();
}

class _HomeTaskViewState extends State<HomeTaskView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGray,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskScheduleView()),
              );
            },
            child: Text("xem công việc ngay"),
          ),
        ),
      ),
    );
  }
}
