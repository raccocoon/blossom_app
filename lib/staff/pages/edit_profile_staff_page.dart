import 'package:flutter/material.dart';

class EditProfileStaffPage extends StatelessWidget {
  const EditProfileStaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 440,
        height: 956,
        child: Stack(
          children: [
            // Background container
            Positioned(
              left: 25,
              top: 124,
              child: Container(
                width: 390,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 440,
                height: 956,
                decoration: BoxDecoration(color: const Color(0xFFFFF4E4)),
              ),
            ),

            // Profile card
            Positioned(
              left: 11,
              top: 110,
              child: Container(
                width: 418,
                height: 801,
                child: Stack(
                  children: [
                    // Profile card background
                    Positioned(
                      left: 2,
                      top: 0,
                      child: Container(
                        width: 416,
                        height: 459,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC0B795),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    // Profile image
                    Positioned(
                      left: 114,
                      top: 55,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/200x200"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),

                    // Staff name
                    Positioned(
                      left: 123,
                      top: 263,
                      child: SizedBox(
                        width: 182,
                        height: 47,
                        child: Text(
                          'Miss Cyntia',
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

                    // Role
                    Positioned(
                      left: 128,
                      top: 302,
                      child: SizedBox(
                        width: 163,
                        height: 27,
                        child: Text(
                          'Senior',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w200,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // ID
                    Positioned(
                      left: 32,
                      top: 376,
                      child: SizedBox(
                        width: 163,
                        height: 27,
                        child: Text(
                          'ID: HC-2024-089',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w200,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Joined date
                    Positioned(
                      left: 232,
                      top: 376,
                      child: SizedBox(
                        width: 163,
                        height: 27,
                        child: Text(
                          'Joined Jan 2025',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w200,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Contact Information section
                    Positioned(
                      left: 2,
                      top: 505,
                      child: Container(
                        width: 416,
                        height: 401,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC0B795),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 530,
                      child: Container(
                        width: 64,
                        height: 59,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/64x59"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 109,
                      top: 550,
                      child: SizedBox(
                        width: 259,
                        height: 20,
                        child: Text(
                          'Contact Information',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF020000),
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Full Name field
                    Positioned(
                      left: 21,
                      top: 607,
                      child: SizedBox(
                        width: 115,
                        height: 14,
                        child: Text(
                          'Full Name',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xB2020000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 633,
                      child: Container(
                        width: 349,
                        height: 46,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 47,
                      top: 644,
                      child: SizedBox(
                        width: 321,
                        height: 21,
                        child: Text(
                          'Miss Cyntia',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF0F0000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Email Address field
                    Positioned(
                      left: 15,
                      top: 691,
                      child: SizedBox(
                        width: 168,
                        height: 14,
                        child: Text(
                          'Email Address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xB2020000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 717,
                      child: Container(
                        width: 349,
                        height: 46,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 47,
                      top: 728,
                      child: SizedBox(
                        width: 321,
                        height: 21,
                        child: Text(
                          'cynthia@healthcare.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF0F0000),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Address field
                    Positioned(
                      left: 28,
                      top: 774,
                      child: SizedBox(
                        width: 91,
                        height: 14,
                        child: Text(
                          'Address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xB2020000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 801,
                      child: Container(
                        width: 349,
                        height: 76,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 47,
                      top: 828,
                      child: SizedBox(
                        width: 321,
                        height: 21,
                        child: Text(
                          '123 Medical Plaza, Healthcare City, HC 12345',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF0F0000),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Emergency Contact section
                    Positioned(
                      left: 0,
                      top: 943,
                      child: Container(
                        width: 416,
                        height: 210,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC0B795),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 33,
                      top: 968,
                      child: Container(
                        width: 64,
                        height: 59,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/64x59"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 107,
                      top: 988,
                      child: SizedBox(
                        width: 259,
                        height: 20,
                        child: Text(
                          'Emergency Contact',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF020000),
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 19,
                      top: 1045,
                      child: SizedBox(
                        width: 266,
                        height: 14,
                        child: Text(
                          'Contact Person & Number',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xB2020000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 33,
                      top: 1083,
                      child: Container(
                        width: 349,
                        height: 46,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 45,
                      top: 1094,
                      child: SizedBox(
                        width: 321,
                        height: 21,
                        child: Text(
                          'John Doe           +601124464299',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF0F0000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    // Security section
                    Positioned(
                      left: 2,
                      top: 1190,
                      child: Container(
                        width: 416,
                        height: 210,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC0B795),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 1215,
                      child: Container(
                        width: 64,
                        height: 59,
                        padding: const EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: const NetworkImage("https://placehold.co/64x59"),
                            fit: BoxFit.cover,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 47,
                      top: 1235,
                      child: SizedBox(
                        width: 259,
                        height: 20,
                        child: Text(
                          'Security',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF020000),
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 35,
                      top: 1295,
                      child: Container(
                        width: 349,
                        height: 46,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF3F3F3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 47,
                      top: 1306,
                      child: SizedBox(
                        width: 321,
                        height: 21,
                        child: Text(
                          'Change Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF0F0000),
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.48,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Header
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 440,
                height: 111,
                decoration: BoxDecoration(color: const Color(0xFFFFF4E4)),
              ),
            ),

            Positioned(
              left: 24,
              top: 78,
              child: SizedBox(
                width: 96,
                height: 21,
                child: Text(
                  'Profile',
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

            Positioned(
              left: 14,
              top: 39,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(width: 28, height: 28, child: Stack()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
