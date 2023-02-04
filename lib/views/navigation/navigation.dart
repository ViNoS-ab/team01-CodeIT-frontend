import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:team01_codit_frontend/views/navigation/main_screen/main_screen.dart';
import 'package:team01_codit_frontend/views/navigation/my_tasks_screen/my_tasks_screen.dart';
import 'package:team01_codit_frontend/views/navigation/profile_screen/profile_screen.dart';


class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  final screens = [
    MainScreen(),
    MyTasksScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.blue,
        height: 55,
        onTap: (index) => setState(() => currentIndex = index),
        index: currentIndex,
        items: [
          Icon(Icons.home_filled),
          Image.asset("assets/gdgLogo.png",width: 50,),
          Icon(Icons.person_2_rounded),
        ],
      ),
    );
  }
}
