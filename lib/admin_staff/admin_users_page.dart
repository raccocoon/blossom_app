import 'package:flutter/material.dart';

class AdminUsersPage extends StatelessWidget {
  const AdminUsersPage({super.key});

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
              left: 31,
              top: 54,
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
                      text: 'Users Management\n',
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

            // Users table
            Positioned(
              left: 357,
              top: 201,
              child: Container(
                width: 1053,
                height: 505,
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

            // Table header
            Positioned(
              left: 357,
              top: 201,
              child: Container(
                width: 1053,
                height: 49,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFCFCFC),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.60,
                      color: const Color(0xFFD4D4D4),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                    ),
                  ),
                ),
              ),
            ),

            // Column headers
            Positioned(
              left: 386,
              top: 216,
              child: const Text(
                'ID',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: 519,
              top: 216,
              child: const Text(
                'NAME',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: 706,
              top: 216,
              child: const Text(
                'ADDRESS',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: 936,
              top: 216,
              child: const Text(
                'DATE',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: 1115,
              top: 216,
              child: const Text(
                'TYPE',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              left: 1287,
              top: 216,
              child: const Text(
                'STATUS',
                style: TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            // Sample user data rows
            ..._buildUserRows(),

            // Navigation sidebar
            Positioned(
              left: 47,
              top: 630,
              child: _buildNavItem('Users', isActive: true),
            ),
            Positioned(
              left: 63,
              top: 553,
              child: _buildNavItem('Marketing'),
            ),
            Positioned(
              left: 66,
              top: 694,
              child: _buildNavItem('Settings'),
            ),
            Positioned(
              left: 61,
              top: 489,
              child: _buildNavItem('Staff'),
            ),
            Positioned(
              left: 126,
              top: 423,
              child: _buildNavItem('Services'),
            ),
            Positioned(
              left: 127,
              top: 351,
              child: _buildNavItem('Bookings'),
            ),
            Positioned(
              left: 128,
              top: 285,
              child: _buildNavItem('Dashboard'),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildUserRows() {
    final users = [
      {
        'id': '00001',
        'name': 'Ariana Grande',
        'address': '089 Kutch Green Apt. 448',
        'date': '14 Feb 2019',
        'type': 'Member',
        'status': 'Active',
        'statusColor': const Color(0xFF00B69B),
        'y': 278,
      },
      {
        'id': '00002',
        'name': 'Annis Suhaimi',
        'address': '979 Immanuel Ferry Suite 526',
        'date': '14 Feb 2019',
        'type': 'Non Member',
        'status': 'Expired',
        'statusColor': const Color(0xFFEE3825),
        'y': 354,
      },
      {
        'id': '00003',
        'name': 'Abel',
        'address': '8587 Frida Ports',
        'date': '14 Feb 2019',
        'type': 'Member',
        'status': 'Expired',
        'statusColor': const Color(0xFFEE3825),
        'y': 430,
      },
      {
        'id': '00004',
        'name': 'Aminah',
        'address': '768 Destiny Lake Suite 600',
        'date': '14 Feb 2019',
        'type': 'Member',
        'status': 'Active',
        'statusColor': const Color(0xFF00B69B),
        'y': 506,
      },
      {
        'id': '00005',
        'name': 'Ruth',
        'address': '042 Mylene Throughway',
        'date': '14 Feb 2019',
        'type': 'Member',
        'status': 'Active',
        'statusColor': const Color(0xFF00B69B),
        'y': 582,
      },
      {
        'id': '00006',
        'name': 'Nami',
        'address': '543 Weimann Mountain',
        'date': '14 Feb 2019',
        'type': 'Member',
        'status': 'Active',
        'statusColor': const Color(0xFF00B69B),
        'y': 658,
      },
    ];

    return users.map((user) {
      return Stack(
        children: [
          // ID
          Positioned(
            left: 387,
            top: user['y'] as double,
            child: SizedBox(
              width: 62,
              child: Opacity(
                opacity: 0.90,
                child: Text(
                  user['id'] as String,
                  style: const TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Name
          Positioned(
            left: 519,
            top: user['y'] as double,
            child: SizedBox(
              width: 133,
              child: Opacity(
                opacity: 0.90,
                child: Text(
                  user['name'] as String,
                  style: const TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Address
          Positioned(
            left: 705.85,
            top: user['y'] as double,
            child: SizedBox(
              width: 154.12,
              child: Opacity(
                opacity: 0.90,
                child: Text(
                  user['address'] as String,
                  style: const TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Date
          Positioned(
            left: 935.64,
            top: user['y'] as double,
            child: SizedBox(
              width: 75.68,
              child: Opacity(
                opacity: 0.90,
                child: Text(
                  user['date'] as String,
                  style: const TextStyle(
                    color: Color(0xFF202224),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Type
          Positioned(
            left: 1114.68,
            top: user['y'] as double,
            child: Opacity(
              opacity: 0.90,
              child: Text(
                user['type'] as String,
                style: const TextStyle(
                  color: Color(0xFF202224),
                  fontSize: 14,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // Status badge
          Positioned(
            left: 1286,
            top: user['y'] as double,
            child: Container(
              width: 57,
              height: 27,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Opacity(
                      opacity: 0.20,
                      child: Container(
                        width: 57,
                        height: 27,
                        decoration: ShapeDecoration(
                          color: user['statusColor'] as Color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 9.80,
                    top: 6,
                    child: Text(
                      user['status'] as String,
                      style: TextStyle(
                        color: user['statusColor'] as Color,
                        fontSize: 12,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
