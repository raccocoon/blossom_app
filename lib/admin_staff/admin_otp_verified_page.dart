import 'package:flutter/material.dart';

class AdminOtpVerifiedPage extends StatelessWidget {
  const AdminOtpVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECE4C7),
      body: Stack(
        children: [
          // Background image
          Positioned(
            left: 223,
            top: -46,
            child: Container(
              width: 993,
              height: 914,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const NetworkImage("https://placehold.co/993x914"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // OTP Verified text
          const Positioned(
            left: 61,
            top: 748,
            child: SizedBox(
              width: 507,
              height: 55,
              child: Text(
                'OTP Verified',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  height: 0.75,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
