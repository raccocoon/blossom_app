import 'package:flutter/material.dart';

class AdminSignupPage extends StatelessWidget {
  const AdminSignupPage({super.key});

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
              // Title
              const Positioned(
                left: 190,
                top: 60,
                child: Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 32,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.11,
                  ),
                ),
              ),

              // Subtitle
              const Positioned(
                left: 199,
                top: 119,
                child: Opacity(
                  opacity: 0.80,
                  child: Text(
                    'Create a account to continue',
                    style: TextStyle(
                      color: Color(0xFF202224),
                      fontSize: 18,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.06,
                    ),
                  ),
                ),
              ),

              // Email field
              Positioned(
                left: 58,
                top: 205,
                child: Container(
                  width: 507,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email Address',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 18,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.06,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        height: 40,
                        padding: const EdgeInsets.only(top: 8, left: 16, right: 8, bottom: 8),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFF8DE),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFC1C1C1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'admin1@blossom.my',
                          style: TextStyle(
                            color: Color(0xFF949494),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Username field
              Positioned(
                left: 58,
                top: 308,
                child: Container(
                  width: 507,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 18,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.06,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        height: 40,
                        padding: const EdgeInsets.only(top: 8, left: 16, right: 8, bottom: 8),
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFFF8DE),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFC1C1C1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Username',
                          style: TextStyle(
                            color: Color(0xFF949494),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Password field
              Positioned(
                left: 58,
                top: 413,
                child: Container(
                  width: 507,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),

              // Terms checkbox
              Positioned(
                left: 65,
                top: 573,
                child: Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.60,
                            color: const Color(0xFF453F2A),
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.60,
                              color: const Color(0xFF453F2A),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Opacity(
                      opacity: 0.80,
                      child: Text(
                        'I accept terms and conditions',
                        style: TextStyle(
                          color: Color(0xFF202224),
                          fontSize: 18,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.06,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Forget Password
              const Positioned(
                left: 427,
                top: 509,
                child: Opacity(
                  opacity: 0.60,
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF202224),
                      fontSize: 18,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.06,
                    ),
                  ),
                ),
              ),

              // Sign Up button
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
                      'Sign Up',
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

              // Already have account
              Positioned(
                left: 193,
                top: 727,
                child: Opacity(
                  opacity: 0.65,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Already have an account?  ',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.06,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: const Color(0xFF453F2A),
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.06,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
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
