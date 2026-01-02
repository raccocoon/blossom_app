import 'package:flutter/material.dart';

class PastBookingsPage extends StatefulWidget {
  const PastBookingsPage({super.key});

  @override
  State<PastBookingsPage> createState() => _PastBookingsPageState();
}

class _PastBookingsPageState extends State<PastBookingsPage> {
  int _selectedTabIndex = 0; // 0 for Upcoming, 1 for Past

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF4E4),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Your Bookings',
          style: TextStyle(
            color: Color(0xFF3E3E3E),
            fontSize: 24,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w600,
            letterSpacing: -0.48,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Tab Bar
          Container(
            width: double.infinity,
            height: 53,
            color: const Color(0xFFFCFCFE),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedTabIndex = 0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          color: _selectedTabIndex == 0 ? const Color(0xFFCA6E3A) : Colors.black,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => _selectedTabIndex = 1),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Past',
                        style: TextStyle(
                          color: _selectedTabIndex == 1 ? const Color(0xFFCA6E3A) : Colors.black,
                          fontSize: 16,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Active tab indicator
          Stack(
            children: [
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.transparent,
              ),
              Positioned(
                left: _selectedTabIndex == 0 ? 39 : 267,
                child: Container(
                  height: 3,
                  width: 111,
                  color: const Color(0xFFCA6E3A),
                ),
              ),
            ],
          ),

          // Content
          Expanded(
            child: _selectedTabIndex == 0 ? _buildUpcomingContent() : _buildPastContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildUpcomingContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Booking Card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Service Name
                const Text(
                  'Blossom',
                  style: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),

                // Service Details
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Body Massage 1 x',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.10,
                            ),
                          ),
                          const SizedBox(height: 8),

                          // Date and Price
                          Row(
                            children: [
                              const Text(
                                '12 Dec 2025',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7A7A7A),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                'RM 90',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Cancel Button
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => _showCancelDialog(context),
                          child: Container(
                            width: 60,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4.26),
                            ),
                            alignment: Alignment.topCenter,
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Color(0xFFFF6669),
                                  fontSize: 16,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Divider
          Container(
            height: 1,
            color: const Color(0xFFEFEFEF),
            margin: const EdgeInsets.symmetric(vertical: 24),
          ),
        ],
      ),
    );
  }

  Widget _buildPastContent() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // First Past Booking
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Blossom',
                  style: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Manicure 1 x',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.10,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              const Text(
                                '8 Mar 2025',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7A7A7A),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                'RM 50',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Divider
          Container(
            height: 1,
            color: const Color(0xFFEFEFEF),
            margin: const EdgeInsets.symmetric(vertical: 24),
          ),

          // Second Past Booking
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Blossom',
                  style: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Basic Manicure 1 x\nBasic Pedicure 1 x',
                            style: TextStyle(
                              color: Color(0xFF7A7A7A),
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.10,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Text(
                                '8 Mar 2025',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                              Container(
                                width: 4,
                                height: 4,
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7A7A7A),
                                  shape: OvalBorder(),
                                ),
                              ),
                              const Text(
                                'RM 110',
                                style: TextStyle(
                                  color: Color(0xFF7A7A7A),
                                  fontSize: 16,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Divider
          Container(
            height: 1,
            color: const Color(0xFFEFEFEF),
            margin: const EdgeInsets.symmetric(vertical: 24),
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: 315,
            height: 310.80,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.60),
              ),
            ),
            child: Stack(
              children: [
                // Close button (optional)
                Positioned(
                  right: 16,
                  top: 16,
                  child: IconButton(
                    icon: const Icon(Icons.close, color: Colors.black),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),

                // Cancel Sign Asset
                Positioned(
                  left: 125,
                  top: 40,
                  child: Image.asset(
                    'assets/icons/cancelsign.png',
                    width: 65.65,
                    height: 65.65,
                    fit: BoxFit.contain,
                  ),
                ),

                // Confirmation text
                Positioned(
                  left: 32,
                  top: 132,
                  child: SizedBox(
                    width: 251,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Are you sure, you want to ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.30,
                              letterSpacing: -0.18,
                            ),
                          ),
                          const TextSpan(
                            text: 'cancel',
                            style: TextStyle(
                              color: Color(0xFFED7354),
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.30,
                              letterSpacing: -0.18,
                            ),
                          ),
                          const TextSpan(
                            text: ' this appointment?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w600,
                              height: 1.30,
                              letterSpacing: -0.18,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

                // Buttons
                Positioned(
                  left: 30,
                  top: 221,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // No button
                      Container(
                        width: 125,
                        height: 54,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(
                            'No',
                            style: TextStyle(
                              color: Color(0xFFED7354),
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ),

                      // Cancel button
                      Container(
                        width: 128,
                        height: 54,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFED7354),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x19003078),
                              blurRadius: 30,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Handle cancel logic here
                            Navigator.of(context).pop();
                            // You could show a success message or update the UI
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
