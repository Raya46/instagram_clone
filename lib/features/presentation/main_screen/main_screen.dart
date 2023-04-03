// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constant.dart';
import 'package:instagram_clone/features/presentation/pages/activity/activity_page.dart';
import 'package:instagram_clone/features/presentation/pages/homepage/home_page.dart';
import 'package:instagram_clone/features/presentation/pages/post/post_page.dart';
import 'package:instagram_clone/features/presentation/pages/profile/profile_page.dart';
import 'package:instagram_clone/features/presentation/pages/search/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int currentIndex = 0;
  late PageController pageController;

@override
void initState(){
  pageController = PageController();
  super.initState();
}

@override
void dispose(){
  pageController.dispose();
  super.dispose();
}

void navigationTap(int index){
  pageController.jumpToPage(index);
}

void onPageChanged(int index){
  setState(() {
    currentIndex = index;
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: bgColor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: primaryColor,
              ),),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: primaryColor,
              ),),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: primaryColor,
              ),),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: primaryColor,
              ),),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: primaryColor,
              ),),
        ],
        onTap: navigationTap,
      ),
      body: PageView(
        controller: pageController,
        children: [
          HomePage(),
          SearchPage(),
          PostPage(),
          ActivityPage(),
          ProfilePage()
        ],
        onPageChanged: onPageChanged,
      ),
    );
  }
}
