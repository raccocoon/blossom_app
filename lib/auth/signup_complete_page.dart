import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';

class SignUpCompletePage extends StatelessWidget {
  static const route = '/signup-complete';
  const SignUpCompletePage({super.key});

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
                const SizedBox(height: 30),
                const Text(
                  'Sign Up Complete !',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: BlossomColors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please check your email and verify your account before logging in.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: BlossomColors.black,
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: 220,
                  child: BlossomOutlinedButton(
                    text: 'Login',
                  onPressed: () {
                      Navigator.pushNamed(context, '/login');
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
