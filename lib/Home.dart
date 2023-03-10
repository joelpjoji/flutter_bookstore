import 'package:bookstore/Screens/LikesScreen.dart';
import 'package:flutter/material.dart';

import 'package:bookstore/Screens/HomeScreen.dart';
import 'package:bookstore/Screens/NotificationScreen.dart';
import 'package:bookstore/Screens/ProfileScreen.dart';
import 'package:bookstore/Screens/RowList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentScreen = 0;
  final pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const LikesScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(219, 240, 255, 5),
        body: pages[currentScreen],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreen,
          onTap: (newScreen) {
            setState(() {
              currentScreen = newScreen;
            });
          },
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active), label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
