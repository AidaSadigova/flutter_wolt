import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedindex = 0;
  // ignore: unused_element
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

//different pages to navigate to
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.building),
              label: 'buildings',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.utensils),
              label: 'eating',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.store),
              label: 'stores',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.searchengin),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'user',
            ),
          ]),
    );
  }
}
