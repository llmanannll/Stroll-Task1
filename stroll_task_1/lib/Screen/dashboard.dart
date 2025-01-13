import 'package:flutter/material.dart';
import 'package:stroll_task_1/common/bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/task_1background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          bottomNavigationBar: CustomBottomNavigationBar(),
          backgroundColor: Colors.transparent,
          body: Container(),
        ));
  }
}
