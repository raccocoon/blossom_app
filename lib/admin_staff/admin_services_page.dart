import 'package:flutter/material.dart';

class AdminServicesPage extends StatelessWidget {
  const AdminServicesPage({super.key});

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
              left: 29,
              top: 48,
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
                      text: 'Service Catalog\n',
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

            // Service labels
            Positioned(
              left: 404,
              top: 286,
              child: const Text(
                'Service',
                style: TextStyle(
                  color: Color(0xB3202224),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                ),
              ),
            ),

            Positioned(
              left: 409,
              top: 607,
              child: const Text(
                'Price',
                style: TextStyle(
                  color: Color(0xB3202224),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.15,
                ),
              ),
            ),

            // First service card - Deep Tissue Massage
            Positioned(
              left: 389,
              top: 314,
              child: Container(
                width: 303,
                height: 350,
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
                      left: 14,
                      top: 265.18,
                      child: SizedBox(
                        width: 236,
                        height: 14.36,
                        child: const Text(
                          'Deep Tissue Massage',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.11,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 14,
                      top: 288.16,
                      child: SizedBox(
                        width: 304,
                        height: 14.36,
                        child: const Text(
                          'Relaxing full body massage to relieve tension and stress.\n',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 11,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 389,
                      top: 314,
                      child: Container(
                        width: 303,
                        height: 223.24,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF9F9F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 13,
                      top: 340,
                      child: Container(
                        width: 266,
                        height: 226,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/266x226"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 6,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      left: 13,
                      top: 320,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: const Text(
                          'Duration: 60 min\n',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 11,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ),

                    // Edit button
                    Positioned(
                      left: 1154,
                      top: 368,
                      child: Container(
                        width: 53,
                        height: 53,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: ShapeDecoration(
                          color: const Color(0x1A000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                        child: const Icon(Icons.edit, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Second service card - Anti-Aging Facial
            Positioned(
              left: 701,
              top: 314,
              child: Container(
                width: 303,
                height: 350,
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
                      left: 15,
                      top: 265.18,
                      child: SizedBox(
                        width: 236,
                        height: 14.36,
                        child: const Text(
                          'Anti-Aging Facial',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.11,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 15,
                      top: 288.16,
                      child: SizedBox(
                        width: 304,
                        height: 14.36,
                        child: const Text(
                          'Rejuvenating treatment using collagen boosting serums.',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 11,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 701,
                      top: 314,
                      child: Container(
                        width: 303,
                        height: 223.24,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF9F9F9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 720,
                      top: 245,
                      child: Container(
                        width: 264,
                        height: 226,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/264x226"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 1,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 6,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                            BoxShadow(
                              color: Color(0x0A000000),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      left: 15,
                      top: 320,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: const Text(
                          'Duration: 60 min\n',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 11,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.82,
                          ),
                        ),
                      ),
                    ),

                    // Edit button
                    Positioned(
                      left: 1154,
                      top: 368,
                      child: Container(
                        width: 53,
                        height: 53,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: ShapeDecoration(
                          color: const Color(0x1A000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(99),
                          ),
                        ),
                        child: const Icon(Icons.edit, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Service name input field
            Positioned(
              left: 389,
              top: 314,
              child: Container(
                width: 945,
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                  color: const Color(0x1A000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Service Name',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Description input field
            Positioned(
              left: 389,
              top: 435,
              child: Container(
                width: 945,
                height: 134,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                  color: const Color(0x1A000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Price input field
            Positioned(
              left: 517,
              top: 647,
              child: Container(
                width: 142,
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                  color: const Color(0x1A000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'RM',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Duration input field
            Positioned(
              left: 389,
              top: 647,
              child: Container(
                width: 107,
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                  color: const Color(0x1A000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '60 min',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Save button
            Positioned(
              left: 1176,
              top: 144,
              child: Container(
                width: 142,
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: ShapeDecoration(
                  color: const Color(0xFF633F05),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inria Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.15,
                    ),
                  ),
                ),
              ),
            ),

            // Upload image section
            Positioned(
              left: 867,
              top: 851,
              child: Container(
                width: 262,
                height: 56,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 4),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 26,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 951,
              top: 731,
              child: Container(
                width: 100,
                height: 82,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/100x82"),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),

            // Navigation sidebar
            Positioned(
              left: 45,
              top: 418,
              child: _buildNavItem('Services', isActive: true),
            ),
            Positioned(
              left: 61,
              top: 562,
              child: _buildNavItem('Users'),
            ),
            Positioned(
              left: 64,
              top: 703,
              child: _buildNavItem('Settings'),
            ),
            Positioned(
              left: 59,
              top: 498,
              child: _buildNavItem('Staff'),
            ),
            Positioned(
              left: 123,
              top: 569,
              child: _buildNavItem('Marketing'),
            ),
            Positioned(
              left: 125,
              top: 360,
              child: _buildNavItem('Bookings'),
            ),
            Positioned(
              left: 126,
              top: 294,
              child: _buildNavItem('Dashboard'),
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
