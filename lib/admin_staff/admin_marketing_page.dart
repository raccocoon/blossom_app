import 'package:flutter/material.dart';

class AdminMarketingPage extends StatelessWidget {
  const AdminMarketingPage({super.key});

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
                      text: 'Marketing & Promotions\n',
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

            // First promo card - Hari Raya Glow Promo
            Positioned(
              left: 376,
              top: 234,
              child: Container(
                width: 529,
                height: 357,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
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
                      left: 15,
                      top: 248,
                      child: SizedBox(
                        width: 425.64,
                        height: 101.10,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Hari Raya Glow Promo\n',
                                style: TextStyle(
                                  color: Color(0xFF202224),
                                  fontSize: 18,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 1.11,
                                ),
                              ),
                              const TextSpan(
                                text: 'Linked to: Hydrating Facial\nEnds: March 2026',
                                style: TextStyle(
                                  color: Color(0xFF202224),
                                  fontSize: 11,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 1.82,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Background image container
                    Positioned(
                      left: 376,
                      top: 218,
                      child: Container(
                        width: 559,
                        height: 229,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/559x229"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),

                    // Card content overlay
                    Positioned(
                      left: 0,
                      top: 227.70,
                      child: Container(
                        width: 529,
                        height: 129.30,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF9F9F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Second promo card - Kaamatan Special
            Positioned(
              left: 376,
              top: 619,
              child: Container(
                width: 519.73,
                height: 314,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
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
                      left: 12.09,
                      top: 220.05,
                      child: SizedBox(
                        width: 418.18,
                        height: 69.30,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Kaamatan Special\n',
                                style: TextStyle(
                                  color: Color(0xFF202224),
                                  fontSize: 18,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 1.11,
                                ),
                              ),
                              const TextSpan(
                                text: 'Linked to: Full Body Scrub\nEnds: May 2026',
                                style: TextStyle(
                                  color: Color(0xFF202224),
                                  fontSize: 11,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w700,
                                  height: 1.82,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Background image container
                    Positioned(
                      left: 341.41,
                      top: 520.55,
                      child: Container(
                        width: 607.18,
                        height: 404.79,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/607x405"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),

                    // Card content overlay
                    Positioned(
                      left: 0,
                      top: 206.81,
                      child: Container(
                        width: 519.73,
                        height: 107.19,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF9F9F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Navigation sidebar
            Positioned(
              left: 50,
              top: 557,
              child: _buildNavItem('Marketing', isActive: true),
            ),
            Positioned(
              left: 66,
              top: 703,
              child: _buildNavItem('Settings'),
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
              top: 630,
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
