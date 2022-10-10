import 'package:flutter/material.dart';
import 'InternalScreens/DashboardPage.dart';
import 'InternalScreens/FavoritePage.dart';
import 'InternalScreens/ProfilePage.dart';
import 'InternalScreens/SearchPage.dart';
import 'InternalScreens/UploadPage.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InternalScreens extends StatefulWidget {
  const InternalScreens({Key? key}) : super(key: key);
  _InternalScreensState createState() => _InternalScreensState();
}

class _InternalScreensState extends State<InternalScreens> {
  int currentIndex = 0;

  final screens = [
    const DashboardPage(),
    const SearchPage(),
    const UploadPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.shifting,
        backgroundColor: const Color(0xffe1dede),
        selectedItemColor: Colors.lightBlueAccent,
        iconSize: 25,
        selectedFontSize: 14,
        unselectedItemColor: Colors.black38,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, size: 40), label: "Upload"),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts), label: "Profile"),
        ],
      ),
    );
  }
}
