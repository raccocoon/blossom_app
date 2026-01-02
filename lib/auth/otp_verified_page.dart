import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';
import 'signup_complete_page.dart';

class OtpVerifiedPage extends StatelessWidget {
  static const route = '/otp-verified';
  const OtpVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlossomColors.bg,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/blossom_logo.png',
                  height: 150,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 26),
                const Text(
                  'OTP Verified',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: BlossomColors.black,
                  ),
                ),
                const SizedBox(height: 22),
                Image.asset(
                  'assets/icons/otpverified_logo.png',
                  width: 64,
                  height: 64,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 220,
                  child: BlossomOutlinedButton(
                    text: 'Continue',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignUpCompletePage.route);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
