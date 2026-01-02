import 'package:flutter/material.dart';

class AdminBookingsPage extends StatelessWidget {
  const AdminBookingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 1440,
        height: 1024,
        child: Stack(
          children: [
            // Logo
            Positioned(
              left: 22,
              top: 22,
              child: Container(
                width: 244,
                height: 224,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const NetworkImage("https://placehold.co/244x224"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Welcome text
            Positioned(
              left: 366,
              top: 109,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Appointment\n',
                      style: TextStyle(
                        color: Color(0xFF633F05),
                        fontSize: 40,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0.75,
                        letterSpacing: 0.60,
                      ),
                    ),
                    const TextSpan(
                      text: 'Welcome back! Admin 1',
                      style: TextStyle(
                        color: Color(0xFFA08355),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 1.88,
                        letterSpacing: 0.24,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Admin profile
            Positioned(
              left: 1171,
              top: 23,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFECE4C7),
                                shape: OvalBorder(
                                  side: BorderSide(
                                    width: 2,
                                    color: const Color(0xFF633F05),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 14,
                            child: const Text(
                              'A',
                              style: TextStyle(
                                color: Color(0xFF633F05),
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      'Admin1',
                      style: TextStyle(
                        color: Color(0xFF39354E),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Today indicator
            Positioned(
              left: 391,
              top: 248,
              child: const SizedBox(
                width: 41,
                height: 16,
                child: Opacity(
                  opacity: 0.60,
                  child: Text(
                    'Today',
                    style: TextStyle(
                      color: Color(0xFF202224),
                      fontSize: 14,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

            // Month/Year header
            Positioned(
              left: 806,
              top: 242,
              child: const SizedBox(
                width: 164,
                height: 28,
                child: Text(
                  'January 2026',
                  style: TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 24,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            // Day/Week/Month toggles
            Positioned(
              left: 1185,
              top: 238,
              child: Container(
                width: 200,
                height: 34,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFAFBFC),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.60,
                      color: const Color(0xFFD4D4D4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 72.58,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF453F2A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Month',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 63.21,
                      child: const Center(
                        child: Text(
                          'Week',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 12,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 64.21,
                      child: const Center(
                        child: Text(
                          'Day',
                          style: TextStyle(
                            color: Color(0xFF202224),
                            fontSize: 12,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Calendar container
            Positioned(
              left: 366,
              top: 214,
              child: Container(
                width: 1046,
                height: 765,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.30,
                      color: const Color(0xFFB8B8B8),
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),

            // Calendar grid lines
            Positioned(
              left: 392,
              top: 345,
              child: Opacity(
                opacity: 0.22,
                child: Container(
                  width: 994,
                  height: 620,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.30,
                        color: const Color(0xFF3E3E3E),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Days header
            Positioned(
              left: 391,
              top: 313,
              child: Container(
                width: 994,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF1F3F9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ),
              ),
            ),

            // Day labels
            Positioned(
              left: 456,
              top: 327,
              child: const Text(
                'MON',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 621,
              top: 327,
              child: const Text(
                'TUE',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 751,
              top: 327,
              child: const Text(
                'WED',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 899,
              top: 327,
              child: const Text(
                'THE',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 1021,
              top: 327,
              child: const Text(
                'FRI',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 1161,
              top: 327,
              child: const Text(
                'SAT',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 1310,
              top: 327,
              child: const Text(
                'SUN',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // Add New Appointment button
            Positioned(
              left: 1185,
              top: 158,
              child: const SizedBox(
                width: 223,
                height: 15,
                child: Text(
                  'Add New Appointment',
                  style: TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 20,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 1116,
              top: 144,
              child: Container(
                width: 53,
                height: 53,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: ShapeDecoration(
                  color: Colors.black.withValues(alpha: 0.10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99),
                  ),
                ),
                child: const Icon(Icons.add, color: Colors.black),
              ),
            ),

            // Sample calendar dates (simplified version)
            ..._buildCalendarDates(),

            // Sample appointments
            Positioned(
              left: 705,
              top: 631,
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 134,
                  height: 30.60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7551E9),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 705,
              top: 631,
              child: Container(
                width: 3.91,
                height: 30.60,
                decoration: BoxDecoration(
                  color: const Color(0xFF7551E9),
                ),
              ),
            ),
            Positioned(
              left: 706,
              top: 638,
              child: const SizedBox(
                width: 80,
                height: 12,
                child: Text(
                  'Abel',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF516FE9),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 1251,
              top: 428,
              child: Opacity(
                opacity: 0.20,
                child: Container(
                  width: 161,
                  height: 30.60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE951BF),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 1251,
              top: 435,
              child: const SizedBox(
                width: 125,
                height: 12,
                child: Text(
                  'Ariana Grande',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFE951BF),
                    fontSize: 13,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            // Navigation sidebar
            Positioned(
              left: 38,
              top: 321,
              child: _buildNavItem('Dashboard'),
            ),
            Positioned(
              left: 54,
              top: 536,
              child: _buildNavItem('Bookings', isActive: true),
            ),
            Positioned(
              left: 57,
              top: 677,
              child: _buildNavItem('Settings'),
            ),
            Positioned(
              left: 56,
              top: 607,
              child: _buildNavItem('Marketing'),
            ),
            Positioned(
              left: 52,
              top: 472,
              child: _buildNavItem('Staff'),
            ),
            Positioned(
              left: 118,
              top: 406,
              child: _buildNavItem('Services'),
            ),
            Positioned(
              left: 119,
              top: 268,
              child: _buildNavItem('Users'),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCalendarDates() {
    final dates = [
      {'day': '25', 'x': 512, 'y': 364, 'gray': true},
      {'day': '26', 'x': 662, 'y': 364, 'gray': true},
      {'day': '27', 'x': 797, 'y': 364, 'gray': true},
      {'day': '28', 'x': 930, 'y': 364, 'gray': true},
      {'day': '29', 'x': 1064, 'y': 364, 'gray': true},
      {'day': '30', 'x': 1208, 'y': 364, 'gray': true},
      {'day': '1', 'x': 1353, 'y': 364, 'black': true},
      {'day': '2', 'x': 522, 'y': 470, 'black': true},
      {'day': '3', 'x': 673, 'y': 470, 'black': true},
      {'day': '4', 'x': 807, 'y': 470, 'black': true},
      {'day': '5', 'x': 941, 'y': 470, 'black': true},
      {'day': '6', 'x': 1074, 'y': 470, 'black': true},
      {'day': '7', 'x': 1218, 'y': 470, 'black': true},
      {'day': '8', 'x': 1353, 'y': 470, 'black': true},
      {'day': '9', 'x': 522, 'y': 572, 'black': true},
      {'day': '10', 'x': 662, 'y': 572, 'black': true},
      {'day': '11', 'x': 797, 'y': 572, 'black': true},
      {'day': '12', 'x': 930, 'y': 572, 'black': true},
      {'day': '13', 'x': 1064, 'y': 572, 'black': true},
      {'day': '14', 'x': 1208, 'y': 572, 'black': true},
      {'day': '15', 'x': 1342, 'y': 572, 'black': true},
      {'day': '16', 'x': 512, 'y': 674, 'black': true},
      {'day': '17', 'x': 662, 'y': 674, 'black': true},
      {'day': '18', 'x': 797, 'y': 674, 'black': true},
      {'day': '19', 'x': 930, 'y': 674, 'black': true},
      {'day': '20', 'x': 1064, 'y': 674, 'black': true},
      {'day': '21', 'x': 1208, 'y': 674, 'black': true},
      {'day': '22', 'x': 1342, 'y': 674, 'black': true},
      {'day': '23', 'x': 512, 'y': 776, 'black': true},
      {'day': '24', 'x': 662, 'y': 776, 'black': true},
      {'day': '25', 'x': 797, 'y': 776, 'black': true},
      {'day': '26', 'x': 930, 'y': 776, 'black': true},
      {'day': '27', 'x': 1064, 'y': 776, 'black': true},
      {'day': '28', 'x': 1208, 'y': 776, 'black': true},
      {'day': '29', 'x': 1342, 'y': 776, 'black': true},
      {'day': '30', 'x': 512, 'y': 878, 'black': true},
      {'day': '31', 'x': 662, 'y': 878, 'black': true},
      {'day': '1', 'x': 807, 'y': 878, 'gray': true},
      {'day': '2', 'x': 941, 'y': 878, 'gray': true},
      {'day': '3', 'x': 1074, 'y': 878, 'gray': true},
      {'day': '4', 'x': 1218, 'y': 878, 'gray': true},
      {'day': '5', 'x': 1353, 'y': 878, 'gray': true},
    ];

    return dates.map((date) {
      return Positioned(
        left: date['x'] as double,
        top: date['y'] as double,
        child: SizedBox(
          width: 21.35,
          height: 18.70,
          child: Text(
            date['day'] as String,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: date.containsKey('gray')
                  ? const Color(0xFFB1B1B1)
                  : const Color(0xFF202224),
              fontSize: 16,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildNavItem(String title, {bool isActive = false}) {
    return Container(
      width: 41,
      height: 41,
      child: Stack(
        children: [
          if (isActive)
            Positioned(
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 1.0,
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xFF453F2A),
                  ),
                ),
              ),
            )
          else
            Positioned(
              left: 0,
              top: 0,
              child: Opacity(
                opacity: 0,
                child: Container(
                  width: 41,
                  height: 41,
                  decoration: BoxDecoration(
                    color: const Color(0xFF453F2A),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
