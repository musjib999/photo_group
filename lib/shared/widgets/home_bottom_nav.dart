import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:picture_group/shared/theme/colors.dart';

class HomeBottomNavigation extends StatefulWidget {
  final List<Widget> pages;
  const HomeBottomNavigation({Key? key, required this.pages}) : super(key: key);

  @override
  _HomeBottomNavigationState createState() => _HomeBottomNavigationState();
}

class _HomeBottomNavigationState extends State<HomeBottomNavigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages.elementAt(_selectedIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(seconds: 1),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _selectedIndex, //New
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 0 ? Ionicons.grid : Ionicons.grid_outline,
              color: AppColor.primaryColor,
            ),
            label: 'Photos',
          ),
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 1
                  ? Ionicons.bookmark
                  : Ionicons.bookmark_outline,
              color: AppColor.primaryColor,
            ),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 2 ? Ionicons.search : Ionicons.search_outline,
              color: AppColor.primaryColor,
            ),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(
              _selectedIndex == 3 ? Ionicons.person : Ionicons.person_outline,
              color: AppColor.primaryColor,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
