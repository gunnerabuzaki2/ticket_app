import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/search_screen.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const Center(child: Text('Airplane')),
    const Center(child: Text('Profile')),
  ];
  int _selectedIndex = 0;

  void _chooseIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });

    //print('Selected Index is $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          selectedItemColor: Colors.green,
          onTap: _chooseIndex,
          elevation: 5,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                ),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile'),
          ]),
    );
  }
}
