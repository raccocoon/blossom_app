import 'package:flutter/material.dart';

class AdminSettingsPage extends StatelessWidget {
  const AdminSettingsPage({super.key});

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
              left: 31,
              top: 39,
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
                      text: 'Settings\n',
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
              left: 1171,
              top: 23,
              child: Container(
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
                  ],
                ),
              ),
            ),

            // Save button
            Positioned(
              left: 721,
              top: 837,
              child: Container(
                width: 337.93,
                height: 63.27,
                decoration: ShapeDecoration(
                  color: const Color(0xFF453F2A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.06,
                    ),
                  ),
                ),
              ),
            ),

            // Role field
            Positioned(
              left: 413,
              top: 601,
              child: const Text(
                'Role',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.06,
                ),
              ),
            ),

            Positioned(
              left: 433,
              top: 656,
              child: const Text(
                'ADMIN',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Email field
            Positioned(
              left: 413,
              top: 442,
              child: const Text(
                'Email Address',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.06,
                ),
              ),
            ),

            Positioned(
              left: 422.27,
              top: 496.39,
              child: const Text(
                'Blossom',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Name field
            Positioned(
              left: 413,
              top: 292,
              child: const Text(
                'Name',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.06,
                ),
              ),
            ),

            Positioned(
              left: 422,
              top: 346,
              child: const Text(
                'Blossom',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Address field
            Positioned(
              left: 896,
              top: 294,
              child: const Text(
                'Address',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.06,
                ),
              ),
            ),

            // Contact field
            Positioned(
              left: 894,
              top: 489,
              child: const Text(
                'Contact',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.06,
                ),
              ),
            ),

            // Site Name section
            Positioned(
              left: 409.09,
              top: 368.20,
              child: const Text(
                'Site Name',
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: 428.73,
              top: 421.96,
              child: const Text(
                'Blossom',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Description section
            Positioned(
              left: 915,
              top: 368,
              child: const Text(
                ' Description',
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: 934.73,
              top: 422.23,
              child: const Text(
                'Bright web is a hybrid dashboard',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Title section
            Positioned(
              left: 409,
              top: 528.16,
              child: const Text(
                'Title',
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: 428.73,
              top: 582.39,
              child: const Text(
                'Blossom',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Upload Logo section
            Positioned(
              left: 838,
              top: 304,
              child: const Text(
                'Upload Logo',
                style: TextStyle(
                  color: Color(0xFF4379EE),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                  height: 1.14,
                  letterSpacing: 0.54,
                ),
              ),
            ),

            // Navigation sidebar
            Positioned(
              left: 50,
              top: 687,
              child: _buildNavItem('Settings', isActive: true),
            ),
            Positioned(
              left: 66,
              top: 610,
              child: _buildNavItem('Marketing'),
            ),
            Positioned(
              left: 61,
              top: 489,
              child: _buildNavItem('Staff'),
            ),
            Positioned(
              left: 126,
              top: 423,
              child: _buildNavItem('Services'),
            ),
            Positioned(
              left: 127,
              top: 351,
              child: _buildNavItem('Bookings'),
            ),
            Positioned(
              left: 128,
              top: 285,
              child: _buildNavItem('Dashboard'),
            ),
            Positioned(
              left: 63,
              top: 553,
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
