import 'package:flutter/material.dart';

class DashboardStaffPage extends StatelessWidget {
  const DashboardStaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 440,
        height: 956,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: const Color(0xFFFFF4E4)),
        child: Stack(
          children: [
            // Welcome text
            Positioned(
              left: 124,
              top: 92,
              child: SizedBox(
                width: 270,
                height: 49,
                child: Text(
                  'Hello, Cynthia\n',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
            ),

            // Profile image
            Positioned(
              left: 30,
              top: 74,
              child: Container(
                width: 85,
                height: 85,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/85x85"),
                    fit: BoxFit.cover,
                  ),
                  shape: OvalBorder(),
                ),
              ),
            ),

            // Notifications section
            Positioned(
              left: 22,
              top: 192,
              child: Container(
                width: 395,
                height: 45,
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 1.81,
                      child: Container(
                        width: 390,
                        height: 44.01,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, 0.50),
                            end: Alignment(1.00, 0.50),
                            colors: [const Color(0xFFC0B795), const Color(0xFFFFF5E5)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -75,
                      top: 16,
                      child: SizedBox(
                        width: 329,
                        height: 15.38,
                        child: Text(
                          'Notifications',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Appointment section
            Positioned(
              left: 20,
              top: 247,
              child: Container(
                width: 395,
                height: 167,
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 6.71,
                      child: Container(
                        width: 390,
                        height: 163.33,
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, 0.50),
                            end: Alignment(1.00, 0.50),
                            colors: [const Color(0xFFC0B795), const Color(0xFFFFF5E5)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -75,
                      top: 7,
                      child: SizedBox(
                        width: 329,
                        height: 57.07,
                        child: Text(
                          'Appointment',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 28,
                      top: 64,
                      child: Container(
                        width: 73,
                        height: 76,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/73x76"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -43,
                      top: 146,
                      child: SizedBox(
                        width: 216,
                        height: 15,
                        child: Text(
                          'Ariana',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Comme',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 53,
                      top: 146,
                      child: SizedBox(
                        width: 216,
                        height: 15,
                        child: Text(
                          'Atikah Suhaaimi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Comme',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Calendar section
            Positioned(
              left: 16,
              top: 479,
              child: Opacity(
                opacity: 0.70,
                child: Container(
                  width: 403,
                  height: 376,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0E1D6),
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ),

            // Calendar month header
            Positioned(
              left: 203,
              top: 424,
              child: Opacity(
                opacity: 0.70,
                child: Container(
                  width: 216,
                  height: 44,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'December 2025',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Droid Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 16,
              top: 428,
              child: SizedBox(
                width: 164,
                height: 40,
                child: Text(
                  'Calender',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
            ),

            // Calendar grid
            Positioned(
              left: 24,
              top: 520,
              child: Container(
                width: 400,
                height: 300,
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Days of week headers
                    Row(
                      children: [
                        _buildCalendarDay('mon'),
                        _buildCalendarDay('tue'),
                        _buildCalendarDay('wed'),
                        _buildCalendarDay('thr'),
                        _buildCalendarDay('fri'),
                        _buildCalendarDay('sat'),
                        _buildCalendarDay('sun'),
                      ],
                    ),
                    // Calendar dates
                    Row(
                      children: [
                        _buildCalendarDate('1'),
                        _buildCalendarDate('2'),
                        _buildCalendarDate('3'),
                        _buildCalendarDate('4', isHighlighted: true),
                        _buildCalendarDate('5'),
                        _buildCalendarDate('6'),
                        _buildCalendarDate('7'),
                      ],
                    ),
                    Row(
                      children: [
                        _buildCalendarDate('8'),
                        _buildCalendarDate('9'),
                        _buildCalendarDate('10'),
                        _buildCalendarDate('11'),
                        _buildCalendarDate('12'),
                        _buildCalendarDate('13'),
                        _buildCalendarDate('14'),
                      ],
                    ),
                    Row(
                      children: [
                        _buildCalendarDate('15'),
                        _buildCalendarDate('16'),
                        _buildCalendarDate('17'),
                        _buildCalendarDate('18'),
                        _buildCalendarDate('19'),
                        _buildCalendarDate('20'),
                        _buildCalendarDate('21'),
                      ],
                    ),
                    Row(
                      children: [
                        _buildCalendarDate('22'),
                        _buildCalendarDate('23'),
                        _buildCalendarDate('24'),
                        _buildCalendarDate('25'),
                        _buildCalendarDate('26'),
                        _buildCalendarDate('27'),
                        _buildCalendarDate('28'),
                      ],
                    ),
                    Row(
                      children: [
                        _buildCalendarDate('29'),
                        _buildCalendarDate('30'),
                        _buildCalendarDate('31'),
                        _buildCalendarDate(''),
                        _buildCalendarDate(''),
                        _buildCalendarDate(''),
                        _buildCalendarDate(''),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Bottom navigation
            Positioned(
              left: 0,
              top: 875,
              child: Container(
                width: 440,
                height: 81,
                decoration: BoxDecoration(color: const Color(0xFFFFD8BE)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildNavItem('Home', 'https://placehold.co/36x35'),
                    _buildNavItem('Booking', 'https://placehold.co/45x39'),
                    _buildNavItem('Search', 'https://placehold.co/36x36'),
                    _buildNavItem('Notes', 'https://placehold.co/57x51'),
                    _buildNavItem('Profile', 'https://placehold.co/47x43'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendarDay(String day) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.44,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarDate(String date, {bool isHighlighted = false}) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isHighlighted ? const Color(0xFFFFD8BE) : Colors.white,
      ),
      child: Center(
        child: Text(
          date,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.44,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String label, String imageUrl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 34,
          height: 31,
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
            letterSpacing: -0.48,
          ),
        ),
      ],
    );
  }
}
