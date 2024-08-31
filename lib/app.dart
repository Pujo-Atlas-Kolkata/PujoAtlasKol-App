import 'package:flutter/material.dart';
import 'package:mobile/screens/collections_screen.dart';
import 'package:mobile/screens/explore_screen.dart';
import 'package:mobile/screens/home_screen.dart';
import 'package:mobile/screens/map_screen.dart';


class PujoAtlasApp extends StatefulWidget {
  const PujoAtlasApp({super.key, required this.title});

  final String title;

  @override
  State<PujoAtlasApp> createState() => _PujoAtlasAppState();
}

class _PujoAtlasAppState extends State<PujoAtlasApp> {
  int selectedIndex = 0;

  final screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const Collections(),
    const MapScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 232, 171),
      body: Center(child: screens[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: const Color.fromARGB(255, 50, 47, 53),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined), label: "Collections"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: "Map"),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
