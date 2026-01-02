import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 440,
        height: 956,
        child: Stack(
          children: [
            Positioned(
              left: 32,
              top: 147,
              child: Container(
                width: 375,
                height: 1280,
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 0,
                      child: Container(
                        width: 337,
                        height: 110,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27,
                              top: 25,
                              child: Container(
                                width: 64,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFDBA70D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(
                                      width: 44,
                                      child: Text(
                                        '+',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: -0.48,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 109,
                              top: 40,
                              child: SizedBox(
                                width: 173,
                                height: 29,
                                child: Text(
                                  'Quick Add Note',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: -0.48,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 4,
                      top: 599,
                      child: SizedBox(
                        width: 371,
                        height: 33,
                        child: Text(
                          'All Notes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    // Pinned Notes section
                    Positioned(
                      left: 0,
                      top: 128,
                      child: SizedBox(
                        width: 371,
                        height: 33,
                        child: Text(
                          'Pinned Notes',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    // Pinned Note 1 - Client Follow-up
                    Positioned(
                      left: 0,
                      top: 167,
                      child: Container(
                        width: 349,
                        height: 198,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 7,
                              top: 181,
                              child: Container(
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFF9C9C),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Important',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFFC14141),
                                        fontSize: 13,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: -0.48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14,
                              top: 206,
                              child: SizedBox(
                                width: 335,
                                height: 33,
                                child: Text(
                                  'Client Follow-up',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14,
                              top: 238,
                              child: SizedBox(
                                width: 311,
                                height: 83,
                                child: Text(
                                  'Remember to call Mrs. Johnson about her test results tomorrow at 2 PM. She mentioned she prefers afternoon calls.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 17,
                              top: 321,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  'Dec 17',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 274,
                              top: 321,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  '08:00 AM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Pinned Note 2 - Inventory Check
                    Positioned(
                      left: 0,
                      top: 383,
                      child: Container(
                        width: 349,
                        height: 198,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 11,
                              top: 393,
                              child: Container(
                                height: 19,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF9FE3FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Supplies',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF457FE4),
                                        fontSize: 13,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: -0.48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14,
                              top: 422,
                              child: SizedBox(
                                width: 335,
                                height: 33,
                                child: Text(
                                  'Inventory Check',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 14,
                              top: 454,
                              child: SizedBox(
                                width: 311,
                                height: 83,
                                child: Text(
                                  'Medical supplies running low: gloves (2 boxes left), masks (1 box), sanitizer needs reorder',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 17,
                              top: 537,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  'Dec 15',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 274,
                              top: 537,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  '11::00 AM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // All Notes section

                    // Note 1 - Staff Meeting Notes
                    Positioned(
                      left: 4,
                      top: 634,
                      child: Container(
                        width: 349,
                        height: 198,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 18,
                              top: 673,
                              child: SizedBox(
                                width: 335,
                                height: 33,
                                child: Text(
                                  'Staff Meeting Notes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 646,
                              child: Container(
                                width: 79,
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFBBF2C0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Meetings',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFF56AB5E),
                                        fontSize: 13,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: -0.48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 705,
                              child: SizedBox(
                                width: 311,
                                height: 83,
                                child: Text(
                                  'Discussed new scheduling system. Implementation starts next Monday. Training session scheduled for Friday 3 PM.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 788,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  'Dec 13',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 273,
                              top: 788,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  '08:00 AM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Note 2 - Equipment Maintenance
                    Positioned(
                      left: 4,
                      top: 858,
                      child: Container(
                        width: 349,
                        height: 198,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 18,
                              top: 897,
                              child: SizedBox(
                                width: 335,
                                height: 33,
                                child: Text(
                                  'Equipment Maintenance',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 870,
                              child: Container(
                                width: 79,
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFFF99D),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Maintenance',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFFC0B84D),
                                        fontSize: 13,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: -0.48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 929,
                              child: SizedBox(
                                width: 311,
                                height: 83,
                                child: Text(
                                  'Ultrasound machine in Room 3 needs servicing. Technician scheduled for Jan 20th. Use Room 2 equipment meanwhile.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 1012,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  'Dec 02',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 273,
                              top: 1012,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  '09:00 AM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Note 3 - New Protocol
                    Positioned(
                      left: 4,
                      top: 1082,
                      child: Container(
                        width: 349,
                        height: 198,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 18,
                              top: 1121,
                              child: SizedBox(
                                width: 335,
                                height: 33,
                                child: Text(
                                  'New Protocol',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 1094,
                              child: Container(
                                width: 79,
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF1BEF3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Text(
                                      'Procedures',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color(0xFFD524D9),
                                        fontSize: 13,
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: -0.48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              top: 1153,
                              child: SizedBox(
                                width: 311,
                                height: 83,
                                child: Text(
                                  'Updated patient intake forms available. Print new versions from shared drive. Old forms valid until end of month.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 21,
                              top: 1236,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  'Dec 02',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 273,
                              top: 1236,
                              child: SizedBox(
                                width: 56,
                                height: 9,
                                child: Text(
                                  '03:20 PM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Header
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 440,
                height: 122,
                decoration: BoxDecoration(color: const Color(0xFFFFF4E4)),
              ),
            ),
            Positioned(
              left: 25,
              top: 124,
              child: Container(
                width: 390,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24,
              top: 78,
              child: SizedBox(
                width: 96,
                height: 21,
                child: Text(
                  'Notes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 14,
              top: 39,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(width: 28, height: 28, child: Stack()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
