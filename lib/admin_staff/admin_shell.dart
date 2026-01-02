import 'package:flutter/material.dart';
import 'admin_dashboard_page.dart';
import 'admin_bookings_page.dart';
import 'admin_users_page.dart';

class AdminShell extends StatefulWidget {
  final String title;

  const AdminShell({super.key, required this.title});

  @override
  State<AdminShell> createState() => _AdminShellState();
}

class _AdminShellState extends State<AdminShell> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const AdminDashboardPage(),
    const AdminBookingsPage(),
    const AdminUsersPage(),
    // Add more pages as needed: Services, Staff, Marketing, Settings
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: _pages[_selectedIndex],
    );
  }
}
