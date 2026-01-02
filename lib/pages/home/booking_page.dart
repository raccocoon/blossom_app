import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime? selectedDate;
  String? selectedTime;

  final List<String> morningTimes = ['9:00', '10:00', '11:00'];
  final List<String> afternoonTimes = ['1:00', '2:00', '3:00', '4:00', '5:00', '6:00'];

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
          'Booking an Appointment',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            letterSpacing: -0.48,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 80,
          child: Stack(
            children: [
              // Month title
              Positioned(
                left: 137,
                top: 38,
                child: const SizedBox(
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

              // Days of week
              ..._buildDaysOfWeek(),

              // Calendar dates
              ..._buildCalendarDates(),

              // Time slots
              ..._buildTimeSlots(),

              // Requests section
              Positioned(
                left: 51,
                top: 450,
                child: const SizedBox(
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

              // Request text area
              Positioned(
                left: 49,
                top: 491,
                child: Container(
                  width: 340,
                  height: 179,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0x7FFF5A5A),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Enter your special requests...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),

              // Book Appointment button
              Positioned(
                left: 55,
                top: 692,
                child: Container(
                  width: 327,
                  height: 48,
                  decoration: ShapeDecoration(
                    color: selectedDate != null && selectedTime != null
                        ? const Color(0xFFC7C8D8)
                        : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: TextButton(
                    onPressed: (selectedDate != null && selectedTime != null)
                        ? _handleBookAppointment
                        : null,
                    child: const Text(
                      'Book Appointment',
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

              // Bottom navigation placeholder
              Positioned(
                left: 0,
                top: 794,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 82,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFD8BE),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildNavItem('Home'),
                      _buildNavItem('Booking', isSelected: true),
                      _buildNavItem('FacialAI'),
                      _buildNavItem('Chat'),
                      _buildNavItem('Profile'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDaysOfWeek() {
    const days = ['Mo', 'Tue', 'Wed', 'Th', 'Fri', 'Sa', 'Su'];
    final positions = [46, 95, 155, 209, 258, 307, 352];

    return List.generate(7, (index) {
      return Positioned(
        left: positions[index].toDouble(),
        top: 87,
        child: SizedBox(
          width: 42,
          height: 31,
          child: Text(
            days[index],
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Sansation',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );
    });
  }

  List<Widget> _buildCalendarDates() {
    final dates = [10, 11, 12, 13, 14, 15, 16];
    final positions = [49, 105, 160, 212, 264, 310, 354];
    final List<Widget> widgets = [];

    for (int i = 0; i < dates.length; i++) {
      final isSelected = selectedDate?.day == dates[i];
      widgets.add(
        Positioned(
          left: positions[i].toDouble(),
          top: 124,
          child: GestureDetector(
            onTap: () => setState(() => selectedDate = DateTime(2024, 12, dates[i])),
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isSelected)
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                      color: Color(0xFFC7C8D8),
                      shape: OvalBorder(),
                    ),
                  ),
                SizedBox(
                  width: 35,
                  height: 31,
                  child: Text(
                    dates[i].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isSelected ? Colors.black : (i < 2 ? Colors.black.withOpacity(0.45) : Colors.black),
                      fontSize: 20,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                if (dates[i] == 12)
                  Positioned(
                    bottom: 5,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFF5A5A),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    }
    return widgets;
  }

  List<Widget> _buildTimeSlots() {
    final List<Widget> widgets = [];

    // Morning section
    widgets.addAll(_buildTimeSection('Morning', morningTimes, 291, 324));
    widgets.addAll(_buildTimeSection('Afternoon', afternoonTimes, 379, 411));

    return widgets;
  }

  List<Widget> _buildTimeSection(String title, List<String> times, double titleTop, double slotsTop) {
    final List<Widget> widgets = [];

    // Section title
    widgets.add(
      Positioned(
        left: 46,
        top: titleTop,
        child: SizedBox(
          width: 130,
          height: 25,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Sansation',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );

    // Time indicator dot
    widgets.add(
      Positioned(
        left: 47,
        top: titleTop + 8,
        child: Container(
          width: 10,
          height: 10,
          decoration: const ShapeDecoration(
            color: Color(0xFFFF5A5A),
            shape: OvalBorder(),
          ),
        ),
      ),
    );

    // Time slots
    final positions = [65, 183, 301];
    for (int i = 0; i < times.length && i < 3; i++) {
      final isSelected = selectedTime == times[i];
      widgets.add(
        Positioned(
          left: positions[i].toDouble(),
          top: slotsTop,
          child: GestureDetector(
            onTap: () => setState(() => selectedTime = times[i]),
            child: Container(
              width: 100,
              height: 41,
              decoration: ShapeDecoration(
                color: isSelected ? const Color(0xFFC7C8D8) : Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color(0x7FFF5A5A),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  times[i],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Second row for afternoon times
    if (times.length > 3) {
      final secondRowPositions = [65, 183, 301];
      for (int i = 3; i < times.length; i++) {
        final isSelected = selectedTime == times[i];
        widgets.add(
          Positioned(
            left: secondRowPositions[i - 3].toDouble(),
            top: slotsTop + 87,
            child: GestureDetector(
              onTap: () => setState(() => selectedTime = times[i]),
              child: Container(
                width: 100,
                height: 41,
                decoration: ShapeDecoration(
                  color: isSelected ? const Color(0xFFC7C8D8) : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0x7FFF5A5A),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    times[i],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Sansation',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }

    return widgets;
  }

  Widget _buildNavItem(String title, {bool isSelected = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFD39F81) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  void _handleBookAppointment() {
    // For demo purposes, randomly decide if slot is available
    final isAvailable = DateTime.now().millisecond % 2 == 0;

    if (isAvailable) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BookingSuccessPage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UnavailableSlotPage()),
      );
    }
  }
}

// Success Page
class BookingSuccessPage extends StatelessWidget {
  const BookingSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 114,
              height: 114,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/114x114"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 281,
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Thank you for booking with ',
                      style: TextStyle(
                        color: Color(0xFF3E3E3E),
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        height: 1.36,
                        letterSpacing: -0.48,
                      ),
                    ),
                    const TextSpan(
                      text: 'Blossom',
                      style: TextStyle(
                        color: Color(0xFF3E3E3E),
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        height: 1.36,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Your booking details:',
              style: TextStyle(
                color: Color(0xFF7A7A7A),
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 1.36,
                letterSpacing: -0.48,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Wednesday,12   10:00 am',
              style: TextStyle(
                color: Color(0xFF3E3E3E),
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 1.36,
                letterSpacing: -0.48,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'At Century Plaza',
              style: TextStyle(
                color: Color(0xFF7A7A7A),
                fontSize: 18,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                height: 1.36,
                letterSpacing: -0.48,
              ),
            ),
            const SizedBox(height: 80),
            Container(
              width: 271,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
                child: const Text(
                  'Main page',
                  style: TextStyle(
                    color: Colors.black,
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
    );
  }
}

// Unavailable Slot Page
class UnavailableSlotPage extends StatelessWidget {
  const UnavailableSlotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Warning symbol (X mark)
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 202.94,
                  height: 193.02,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFF0000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(64.77),
                    ),
                  ),
                ),
                // Vertical line of X
                Container(
                  width: 13.32,
                  height: 46.69,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFF0000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.67),
                    ),
                  ),
                ),
                // Horizontal line of X
                Positioned(
                  top: 56.69,
                  child: Container(
                    width: 46.69,
                    height: 13.32,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFF0000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.67),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 308,
              child: const Text(
                'OOPS ! Slot is UNAVAILABLE\nPlease choose another time',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3E3E3E),
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                  height: 1.36,
                  letterSpacing: -0.48,
                ),
              ),
            ),
            const SizedBox(height: 80),
            Container(
              width: 148,
              height: 54,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                ),
              ),
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.black,
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
    );
  }
}
