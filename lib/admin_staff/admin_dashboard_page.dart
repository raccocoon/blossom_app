import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 1440,
        height: 1024,
        child: Stack(
          children: [
            // Logo
            Positioned(
              left: 41,
              top: 23,
              child: Container(
                width: 244,
                height: 224,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/244x224"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Welcome text
            Positioned(
              left: 366,
              top: 109,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Admin Dashboard\n',
                      style: TextStyle(
                        color: Color(0xFF633F05),
                        fontSize: 40,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0.75,
                        letterSpacing: 0.60,
                      ),
                    ),
                    const TextSpan(
                      text: 'Welcome back! Admin 1',
                      style: TextStyle(
                        color: Color(0xFFA08355),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 1.88,
                        letterSpacing: 0.24,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Admin profile
            Positioned(
              left: 1241,
              top: 37,
              child: Container(
                width: 175,
                height: 72,
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFECE4C7),
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2,
                                    color: const Color(0xFF633F05),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 14,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Color(0xFF633F05),
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Admin1',
                      style: TextStyle(
                        color: Color(0xFF39354E),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 16,
                      height: 16,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(width: 16, height: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Stats cards
            // Total Bookings
            Positioned(
              left: 527,
              top: 197,
              child: Container(
                width: 300,
                height: 170,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 54,
                      offset: Offset(6, 6),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 24,
                      child: const Opacity(
                        opacity: 0.70,
                        child: Text(
                          'Total Bookings',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 52,
                      child: const Text(
                        '20',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 28,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 84,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: '+12%',
                              style: TextStyle(
                                color: Color(0xFF00B69B),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Color(0xFF12153C),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: 'Up this Week',
                              style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Active Staff
            Positioned(
              left: 527,
              top: 401,
              child: Container(
                width: 300,
                height: 170,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 54,
                      offset: Offset(6, 6),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 24,
                      child: const Opacity(
                        opacity: 0.70,
                        child: Text(
                          'Active Staff',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 52,
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 28,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 84,
                      child: const Text(
                        '2 on Leave',
                        style: TextStyle(
                          color: Color(0xFFE43434),
                          fontSize: 16,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Total Revenue
            Positioned(
              left: 892,
              top: 197,
              child: Container(
                width: 300,
                height: 170,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 54,
                      offset: Offset(6, 6),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 24,
                      child: const Opacity(
                        opacity: 0.70,
                        child: Text(
                          'Total Revenue',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 52,
                      child: const Text(
                        '20,000',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 28,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 84,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: '+8.5%',
                              style: TextStyle(
                                color: Color(0xFF00B69B),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Color(0xFF12153C),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(
                              text: 'Up this Week',
                              style: TextStyle(
                                color: Color(0xFF606060),
                                fontSize: 16,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Total Services
            Positioned(
              left: 892,
              top: 400,
              child: Container(
                width: 300,
                height: 170,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x0C000000),
                      blurRadius: 54,
                      offset: Offset(6, 6),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 24,
                      child: const Opacity(
                        opacity: 0.70,
                        child: Text(
                          'Total Services',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 52,
                      child: const Text(
                        '5',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 28,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 84,
                      child: const Text(
                        '4 Categories',
                        style: TextStyle(
                          color: Color(0xFF633F05),
                          fontSize: 16,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Navigation sidebar
            Positioned(
              left: 73,
              top: 537,
              child: _buildNavItem('Dashboard', isActive: true),
            ),
            Positioned(
              left: 76,
              top: 678,
              child: _buildNavItem('Settings'),
            ),
            Positioned(
              left: 75,
              top: 611,
              child: _buildNavItem('Marketing'),
            ),
            Positioned(
              left: 71,
              top: 473,
              child: _buildNavItem('Staff'),
            ),
            Positioned(
              left: 137,
              top: 407,
              child: _buildNavItem('Services'),
            ),
            Positioned(
              left: 137,
              top: 335,
              child: _buildNavItem('Bookings'),
            ),
            Positioned(
              left: 137,
              top: 244,
              child: _buildNavItem('Users'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String title, {bool isActive = false}) {
    return Container(
      width: 41,
      height: 41,
      child: Stack(
        children: [
          if (isActive)
            Positioned(
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 1.0,
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xFF453F2A),
                  ),
                ),
              ),
            )
          else
            Positioned(
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 0,
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xFF453F2A),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
