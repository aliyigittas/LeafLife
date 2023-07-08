// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'SearchScreen.dart';
import 'HomeScreen.dart';
import 'ProfileScreen.dart';

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({super.key});

  @override
  State<MainBottomClass> createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
  int selectedIndex = 0;
  final widgetTitle = ["Home", "Explore", "Profile"];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final widgetOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widgetTitle.elementAt(selectedIndex),
          style: const TextStyle(
            fontFamily: 'FredokaOne',
            fontSize: 25,
            color: Color.fromARGB(255, 221, 249, 221),
          ),
        ),
        backgroundColor: const Color(0xFF5c9464),
      ),
      backgroundColor: const Color(0xFFA4E4B4),
      body: Center(child: widgetOptions.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF5c9464),
        unselectedItemColor: const Color(0xFFA4E4B4),
        selectedItemColor: const Color(0xFF084864),
        items: [
          myBarItem(const Icon(Icons.home_rounded), 'Home'),
          myBarItem(const Icon(Icons.explore), 'Explore'),
          myBarItem(const Icon(Icons.person), 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF084864),
        onPressed: (() {
          Navigator.pushReplacementNamed(context, '/NewPost');
        }),
        //scan icon
        child: const Icon(Icons.add_a_photo_rounded, color: Colors.white),
      ),
    );
  }

  BottomNavigationBarItem myBarItem(Icon icon, String label) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
