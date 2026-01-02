import 'package:flutter/material.dart';

class FacialAiResultPage extends StatelessWidget {
  const FacialAiResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF4E4),
        elevation: 0,
        title: Container(
          width: 336,
          height: 51,
          decoration: ShapeDecoration(
            color: const Color(0xFFFFD8BE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Center(
            child: Text(
              'FacialAI Result',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Greeting
              const Positioned(
                left: 40,
                top: 77,
                child: SizedBox(
                  width: 113,
                  child: Text(
                    'Hello Ariana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Open Sans Hebrew',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              // Introduction text
              const Positioned(
                left: 40,
                top: 101,
                child: SizedBox(
                  width: 363,
                  height: 92,
                  child: Text(
                    'We\'ve analyzed your skin to give you a personalized breakdown of its current state. 🌟  Whether you\'re new to skincare or a seasoned pro, this report will help you understand your skin\'s needs and how to take care of it.\n\nHere\'s what we discovered about your skin:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Open Sans Hebrew',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              // Analysis header
              Positioned(
                left: 40,
                top: 271,
                child: Container(
                  width: 364,
                  height: 15,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFC7E0FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: const Text(
                    'Here\'s what we discovered about your skin :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              // Analysis container border
              Positioned(
                left: 40,
                top: 271,
                child: Container(
                  width: 364,
                  height: 256,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF003D89),
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),

              // Detailed analysis text
              const Positioned(
                left: 50.71,
                top: 303.59,
                child: SizedBox(
                  width: 342.59,
                  height: 203.29,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: ' 1. Skin Type:\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Combination Skin\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Your skin shows signs of both dry and oily areas. The T-zone (forehead, nose, and chin) is oily, while the cheeks are slightly dry.\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Skin Texture:\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Uneven Texture\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Your skin texture is slightly uneven, with rough patches around the cheek area. A gentle exfoliate can help smooth the skin.\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' 3. Pore level:\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Normal\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Pores are hardly visible.\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '4. Pigmentation:\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'No pigmentation detected.\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '5. Acne & Blemishes:\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'Mild Acne Breakouts\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'You have a few mild breakouts on the forehead and chin. Consider using an acne-targeting treatment to help with healing.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Analysis cards
              _buildAnalysisCard('Skin Type', 'Combination skin', 27, 276),
              _buildAnalysisCard('Texture', 'Uneven Texture', 106, 276),
              _buildAnalysisCard('Pores level', 'Normal', 181, 276),
              _buildAnalysisCard('Pigmentation', 'No pigmentation detected', 265, 276),
              _buildAnalysisCard('Acne', 'Moderate severality', 346, 276),

              // Recommended treatment section
              Positioned(
                left: 57,
                top: 552,
                child: Container(
                  width: 327,
                  height: 32,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Recommended treatment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              // Treatment cards
              _buildTreatmentCard('Signature Facial', 28, 608),
              _buildTreatmentCard('Acne Facial', 231, 608),

              // Save Results button
              Positioned(
                left: 153,
                top: 743,
                child: Container(
                  width: 131,
                  height: 31,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FacialAiSavedPage()),
                    ),
                    child: const Text(
                      'Save Results',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),

              // Bottom navigation
              Positioned(
                left: 0,
                top: 804,
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
                      _buildNavItem('Booking'),
                      _buildNavItem('FacialAI', isSelected: true),
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

  Widget _buildAnalysisCard(String title, String value, double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Column(
        children: [
          Container(
            width: 66,
            height: 38,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFE9F3),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0xFFFF71B2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 8,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 74,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTreatmentCard(String title, double left, double top) {
    return Positioned(
      left: left,
      top: top,
      child: Column(
        children: [
          Container(
            width: 179,
            height: 92,
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 192,
            height: 33,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
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
}

// Error Page
class FacialAiErrorPage extends StatelessWidget {
  const FacialAiErrorPage({super.key});

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
                'OOPS ! We unable to capture your photo \nPlease try again or upload photo.',
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

// Saved/Success Page
class FacialAiSavedPage extends StatelessWidget {
  const FacialAiSavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success image
            Container(
              width: 387.95,
              height: 387.95,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://placehold.co/388x388"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // "Saved" text
            SizedBox(
              width: 281,
              child: const Text(
                'Saved',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181818),
                  fontSize: 32,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.48,
                ),
              ),
            ),
            const SizedBox(height: 80),

            // Back to Home button
            Container(
              width: 327,
              height: 48,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
                child: const Text(
                  'Back to Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
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
