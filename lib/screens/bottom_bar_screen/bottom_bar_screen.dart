import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../home_screen/home_screen.dart';
import '../settings_screen/settings_screen.dart';


class BottomBarScreen extends StatefulWidget {
  static const routeName = "/home";
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  var _currentIndex = 0;

  @override
  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      const SettingsScreen(),
    ];
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            50,
          ),
          color: Colors.grey[200],
        ),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: const Color.fromRGBO(46, 182, 231, 100),
              unselectedColor: Colors.grey[500],
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const Text("Settings"),
              selectedColor: const Color.fromRGBO(46, 182, 231, 100),
              unselectedColor: Colors.grey[500],
            ),
          ],
        ),
      ),
    );
  }
}
