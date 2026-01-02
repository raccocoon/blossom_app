import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'chat_page.dart';
import 'booking_page.dart';
import 'facial_ai_instruction_page.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const BookingPage(),
      const FacialAiInstructionPage(),
      const ChatPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: pages[index]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFFD8BE),
        selectedItemColor: const Color(0xFFD39F81),
        unselectedItemColor: Colors.black54,
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home_button.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/booking_button.png', width: 24, height: 24),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/facialai_button.png', width: 24, height: 24),
            label: 'FacialAI',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/chat_button.png', width: 24, height: 24),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile_button.png', width: 24, height: 24),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  final String title;
  const _PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800)));
  }
}
