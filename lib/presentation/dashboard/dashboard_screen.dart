import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedTabIndex = 0;

  final List _pages = [
    Center(
      child: Text('explore'.tr),
    ),
    Center(
      child: Text('events'.tr),
    ),
    Center(
      child: Text('map'.tr),
    ),
    Center(
      child: Text('profile'.tr),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: (index) => _changeTab(index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.explore_rounded),
            label: 'explore'.tr,
            tooltip: 'explore'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_month_rounded),
            label: 'events'.tr,
            tooltip: 'events'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.location_on_rounded),
            label: 'map'.tr,
            tooltip: 'map'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'profile'.tr,
            tooltip: 'profile'.tr,
          ),
        ],
      ),
    );
  }
}
