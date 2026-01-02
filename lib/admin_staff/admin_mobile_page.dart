import 'package:flutter/material.dart';

class AdminMobilePage extends StatelessWidget {
  const AdminMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE4C7),
      body: Center(
        child: Container(
          width: 630,
          height: 825,
          decoration: ShapeDecoration(
            color: const Color(0xFFC0B795),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.30,
                color: const Color(0xFFB8B8B8),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Stack(
            children: [
              // Back button placeholder
              Positioned(
                left: 24,
                top: 40,
                child: Container(
                  width: 66,
                  height: 66,
                  decoration: const BoxDecoration(),
                ),
              ),

              // Title
              const Positioned(
                left: 157,
                top: 208,
                child: Text(
                  'Enter Mobile Number',
                  style: TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 32,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.11,
                  ),
                ),
              ),

              // Phone number field
              Positioned(
                left: 67,
                top: 332,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Opacity(
                      opacity: 0.80,
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 18,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.06,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 457,
                      height: 44,
                      padding: const EdgeInsets.all(12),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFF5E4),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: const Color(0xB2A0A0A0),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        '012-345678',
                        style: TextStyle(
                          color: Color(0x8C808080),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Send OTP button
              Positioned(
                left: 106,
                top: 653,
                child: Container(
                  width: 418,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF453F2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Send OTP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.07,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
