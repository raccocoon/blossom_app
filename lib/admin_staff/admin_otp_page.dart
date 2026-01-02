import 'package:flutter/material.dart';

class AdminOtpPage extends StatelessWidget {
  const AdminOtpPage({super.key});

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
                left: 99,
                top: 139,
                child: SizedBox(
                  width: 399,
                  height: 105,
                  child: Text(
                    'Verify OTP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C1C28),
                      fontSize: 40,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.80,
                    ),
                  ),
                ),
              ),

              // OTP input field
              Positioned(
                left: 219,
                top: 249,
                child: Container(
                  width: 191,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2),
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: const Color(0xB2A0A0A0),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'OTP',
                        style: TextStyle(
                          color: Color(0x8C808080),
                          fontSize: 16,
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Resend code
              Positioned(
                left: 192,
                top: 346,
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Didn\'t Receive the Code? ',
                        style: TextStyle(
                          color: Color(0xFF453F2A),
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Verify OTP button
              Positioned(
                left: 106,
                top: 601,
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
                      'Verify OTP',
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
