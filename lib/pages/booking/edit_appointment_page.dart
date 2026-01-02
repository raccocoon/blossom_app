import 'package:flutter/material.dart';

class EditAppointmentPage extends StatelessWidget {
  const EditAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Container(
        width: 440,
        height: 956,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: const Color(0xFFFFF4E4)),
        child: Stack(
          children: [
            // Header
            Positioned(
              left: 96,
              top: 87,
              child: Text(
                'Edit an Appointment',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.48,
                ),
              ),
            ),

            Positioned(
              left: 27,
              top: 90,
              child: Container(
                width: 30,
                height: 30,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Stack(),
              ),
            ),

            // Month header
            Positioned(
              left: 137,
              top: 118,
              child: SizedBox(
                width: 159,
                height: 41,
                child: Text(
                  'December',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Requests section header
            Positioned(
              left: 51,
              top: 530,
              child: SizedBox(
                width: 99,
                height: 41,
                child: Text(
                  'Requests',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Day headers
            Positioned(
              left: 46,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Mo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 95,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Tue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 155,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Wed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 209,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Th',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 258,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Fri',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 307,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Sa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 352,
              top: 167,
              child: SizedBox(
                width: 42,
                height: 31,
                child: Text(
                  'Su',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Calendar dates
            Positioned(
              left: 49,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '10',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 105,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '11',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 212,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '13',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 264,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '14',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 310,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '15',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 354,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '16',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.45),
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Selected date (12) with indicator
            Positioned(
              left: 160,
              top: 204,
              child: SizedBox(
                width: 35,
                height: 31,
                child: Text(
                  '12',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 173,
              top: 231,
              child: Container(
                width: 10,
                height: 10,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF5A5A),
                  shape: OvalBorder(),
                ),
              ),
            ),

            // Time slot indicators
            Positioned(
              left: 47,
              top: 299,
              child: Container(
                width: 10,
                height: 10,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF5A5A),
                  shape: OvalBorder(),
                ),
              ),
            ),

            Positioned(
              left: 47,
              top: 387,
              child: Container(
                width: 10,
                height: 10,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF5A5A),
                  shape: OvalBorder(),
                ),
              ),
            ),

            // Time period labels
            Positioned(
              left: 46,
              top: 291,
              child: SizedBox(
                width: 130,
                height: 25,
                child: Text(
                  'Morning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            Positioned(
              left: 54,
              top: 379,
              child: SizedBox(
                width: 130,
                height: 25,
                child: Text(
                  'Afternoon',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            // Time slots
            Positioned(
              left: 65,
              top: 324,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '9:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 183,
              top: 411,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '2:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 65,
              top: 411,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '1:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 301,
              top: 324,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '11:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 183,
              top: 324,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '10:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 301,
              top: 411,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '3:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 64,
              top: 474,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '4:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 183,
              top: 474,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '5:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Requests section
            Positioned(
              left: 49,
              top: 571,
              child: Container(
                width: 340,
                height: 179,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 301,
              top: 474,
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: const Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '6:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),

            // Edit Appointment button
            Positioned(
              left: 55,
              top: 772,
              child: Container(
                width: 327,
                height: 48,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 327,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC7C8D8),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 93,
                      top: 12,
                      child: Text(
                        'Edit Appointment',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFFFF4E4),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
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
    );
  }
}
