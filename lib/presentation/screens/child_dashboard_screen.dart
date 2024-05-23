import 'package:flutter/material.dart';
import 'package:shield/presentation/screens/alert_page_screen.dart';
import 'package:shield/presentation/screens/dashboard_screen.dart';
import 'package:shield/presentation/screens/phone_page_screen.dart';
import 'package:shield/presentation/screens/socials_page_screen.dart';
import 'package:shield/core/colors/colors.dart';

class ChildDashboard extends StatefulWidget {
  ChildDashboard({super.key});

  @override
  _ChildDashboardState createState() => _ChildDashboardState();
}

class _ChildDashboardState extends State<ChildDashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    DashboardPage(),
    PhonePage(),
    const SocialsPage(),
    AlertsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryblue4in1,
      appBar: AppBar(
        backgroundColor: AppColors.primaryblue4in1,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            // Handle menu press
          },
        ),
        title: const Text(
          'Child first name',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline_rounded, color: Colors.white),
            onPressed: () {
              // Handle person icon press
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: navigation(),
    );
  }

  Widget navigation() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _navBarIcon(Icons.dashboard_rounded, 'Dashboard', 0),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _navBarIcon(Icons.phone_android_rounded, 'Controls', 1),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _navBarIcon(Icons.filter_drama_sharp, 'Socials', 2),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: _navBarIcon(Icons.notifications_none_outlined, 'Alert', 3),
          label: '',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.primaryblue4in1,
      onTap: _onItemTapped,
      backgroundColor: AppColors.secondaryblue4in1,
      type: BottomNavigationBarType.fixed,
    );
  }

  Widget _navBarIcon(IconData icon, String label, int index) {
    return Container(
      width: 80,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: _selectedIndex == index
            ? AppColors.primaryblue4in1
            : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(icon),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index
                  ? Colors.white
                  : AppColors.primaryblue4in1,
            ),
          ),
        ],
      ),
    );
  }
}
