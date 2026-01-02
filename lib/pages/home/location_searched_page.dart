import 'package:flutter/material.dart';

class LocationSearchedPage extends StatelessWidget {
  const LocationSearchedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Map area (placeholder - you would integrate actual map here)
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 268,
              color: Colors.grey[200], // Placeholder for map
              child: const Center(
                child: Icon(
                  Icons.map,
                  size: 100,
                  color: Colors.grey,
                ),
              ),
            ),
          ),

          // Bottom card with location details
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 268,
              decoration: const BoxDecoration(
                color: Color(0xFFFFF4E4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  // Back button
                  Positioned(
                    left: 8,
                    top: 20,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  // Business name
                  Positioned(
                    left: 56,
                    top: 28,
                    child: Row(
                      children: [
                        Text(
                          'Century Plaza',
                          style: const TextStyle(
                            color: Color(0xFF1C1C28),
                            fontSize: 23,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.46,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Full address
                  Positioned(
                    left: 56,
                    top: 83,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 94,
                      child: Text(
                        'Lot 18 C 1st Floor Papar Century Plaza Papar Sabah',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                  ),

                  // Confirm Location button
                  Positioned(
                    left: 54,
                    top: 150,
                    child: Container(
                      width: 320,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Confirm Location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFF4E4),
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // GPS/location pin icon placeholder
                  Positioned(
                    right: 40,
                    top: 20,
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.my_location,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
