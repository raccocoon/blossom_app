import 'package:flutter/material.dart';

class PointsHistoryPage extends StatelessWidget {
  const PointsHistoryPage({super.key});

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
          'Points History',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Balance Card
            Container(
              width: double.infinity,
              height: 113,
              margin: const EdgeInsets.only(bottom: 24),
              decoration: ShapeDecoration(
                color: const Color(0xFFFFD8BE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 17,
                    top: 32,
                    child: const Text(
                      'Your Current Balance',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 17,
                    top: 50,
                    child: const Text(
                      '125',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 205,
                    top: 33,
                    child: const Text(
                      'Points earned this month:',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 310,
                    top: 50,
                    child: const Text(
                      '+50',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 96,
                  height: 27,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF898A8D),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Points Earned',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 96,
                  height: 27,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF898A8D),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Points Used',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Recent Activity Title
            const Text(
              'Recent Activity',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.48,
              ),
            ),

            const SizedBox(height: 16),

            // Activity Items
            _buildActivityItem(
              icon: '-',
              iconColor: const Color(0xFFFF5A5A),
              iconBgColor: const Color(0x7FFF5A5A),
              title: 'Redeemed: \$10 Off Voucher',
              date: 'May 20, 2025',
              points: '-125',
              pointsColor: const Color(0xFFFF5A5A),
            ),

            Container(
              height: 1,
              color: Colors.black.withOpacity(0.25),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),

            _buildActivityItem(
              icon: '+',
              iconColor: const Color(0xFF06E80F),
              iconBgColor: const Color(0x604AD991),
              title: 'Booking: Deep Tissues Massage',
              date: 'May 10, 2025',
              points: '+80',
              pointsColor: const Color(0xFF3DEA46),
            ),

            Container(
              height: 1,
              color: Colors.black.withOpacity(0.25),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),

            _buildActivityItem(
              icon: '+',
              iconColor: const Color(0xFF06E80F),
              iconBgColor: const Color(0x604AD991),
              title: 'Bonus: Friend Referral',
              date: 'May 1, 2025',
              points: '+50',
              pointsColor: const Color(0xFF3DEA46),
            ),

            Container(
              height: 1,
              color: Colors.black.withOpacity(0.25),
              margin: const EdgeInsets.symmetric(vertical: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityItem({
    required String icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String date,
    required String points,
    required Color pointsColor,
  }) {
    return Row(
      children: [
        Container(
          width: 25,
          height: 25,
          margin: const EdgeInsets.only(right: 16),
          decoration: ShapeDecoration(
            color: iconBgColor,
            shape: const OvalBorder(),
          ),
          child: Center(
            child: Text(
              icon,
              style: TextStyle(
                color: iconColor,
                fontSize: 20,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.48,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.48,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.48,
                ),
              ),
            ],
          ),
        ),
        Text(
          points,
          style: TextStyle(
            color: pointsColor,
            fontSize: 20,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            letterSpacing: -0.48,
          ),
        ),
      ],
    );
  }
}
