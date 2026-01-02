import 'package:flutter/material.dart';

class AdminSignupCompletePage extends StatelessWidget {
  const AdminSignupCompletePage({super.key});

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

          // Sign Up Complete text
          const Positioned(
            left: 503,
            top: 740,
            child: SizedBox(
              width: 434,
              height: 47,
              child: Text(
                'Sign Up Complete !',
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

          // Please Login text
          const Positioned(
            left: 597,
            top: 799,
            child: SizedBox(
              width: 245,
              height: 47,
              child: Text(
                'Please Login ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w300,
                  height: 1.20,
                ),
              ),
            ),
          ),

          // Login button
          Positioned(
            left: 609,
            top: 869,
            child: Container(
              width: 222,
              height: 66,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
