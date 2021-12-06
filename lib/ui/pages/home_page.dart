import 'package:flutter/material.dart';
import 'package:trip_app/ui/pages/bar_item_page.dart';
import 'package:trip_app/ui/pages/home_page_content.dart';
import 'package:trip_app/ui/pages/profile_page.dart';
import 'package:trip_app/ui/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    HomePageContent(),
    SearchPage(),
    BarItemPage(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
