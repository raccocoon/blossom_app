import 'package:flutter/material.dart';

class BookingSuccessPage extends StatelessWidget {
  const BookingSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 440,
        height: 956,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            // Home button
            Positioned(
              left: 84,
              top: 662,
              child: Container(
                width: 271,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 15,
                  children: [
                    Container(
                      width: 271,
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Text(
                            'Home',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Booking details
            Positioned(
              left: 119,
              top: 424,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Text(
                    'Your booking details: ',
                    style: TextStyle(
                      color: const Color(0xFF7A7A7A),
                      fontSize: 18,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 1.36,
                      letterSpacing: -0.48,
                    ),
                  ),
                  Text(
                    'Wednesday,12   10:00 am',
                    style: TextStyle(
                      color: const Color(0xFF3E3E3E),
                      fontSize: 18,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 1.36,
                      letterSpacing: -0.48,
                    ),
                  ),
                  Text(
                    'At Century Plaza',
                    style: TextStyle(
                      color: const Color(0xFF7A7A7A),
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      height: 1.36,
                      letterSpacing: -0.48,
                    ),
                  ),
                ],
              ),
            ),

            // Success message
            Positioned(
              left: 79,
              top: 321,
              child: SizedBox(
                width: 281,
                child: Text(
                  'Appointment Edited',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF3E3E3E),
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    height: 1.36,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
            ),

            // Success icon
            Positioned(
              left: 141,
              top: 175,
              child: Container(
                width: 158,
                height: 146,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/158x146"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
