import 'package:flutter/material.dart';

import '../home/home_shell.dart';
import '../booking/booking_shell.dart';
import '../ai_skin/ai_shell.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _currentIndex = 0;

  late final List<_TabInfo> _tabs = [
    _TabInfo(label: 'Home', icon: Icons.home_rounded, builder: () => const HomeShell()),
    _TabInfo(label: 'Booking', icon: Icons.event_available_rounded, builder: () => const BookingShell()),
    _TabInfo(label: 'Facial AI', icon: Icons.face_retouching_natural_rounded, builder: () => const AiShell()),
    _TabInfo(label: 'Chat', icon: Icons.chat_bubble_rounded, builder: () => _Placeholder('Chat / WhatsApp Support')),
    _TabInfo(label: 'Profile', icon: Icons.person_rounded, builder: () => _Placeholder('Profile & Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    final tab = _tabs[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Blossom - ${tab.label}'),
      ),
      body: SafeArea(child: tab.builder()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _currentIndex = index),
        items: _tabs
            .map(
              (t) => BottomNavigationBarItem(
                icon: Icon(t.icon),
                label: t.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _TabInfo {
  _TabInfo({required this.label, required this.icon, required this.builder});

  final String label;
  final IconData icon;
  final Widget Function() builder;
}

class _Placeholder extends StatelessWidget {
  const _Placeholder(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
