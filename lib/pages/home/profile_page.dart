import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'My Profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/settings_icon.svg', width: 24, height: 24),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),

            // Profile Picture and Info
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 128,
                        height: 126,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/128x126"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset(
                          'assets/icons/badge.png',
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Ariana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '23 years old',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Edit button
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/settings'),
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xFF1C1C28),
                      fontSize: 14,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Skin Analysis Cards
            Container(
              height: 118,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: const Color(0xFF898A8D),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                children: [
                  _buildSkinCard('Skin Type', 'Oily', 'assets/icons/oily.svg'),
                  _buildSkinCard('Sensitivity', 'Sensitive', 'assets/icons/sensitive.svg'),
                  _buildSkinCard('Elasticity', 'Elastic', 'assets/icons/elastic.svg'),
                  _buildSkinCard('Acne Prone', 'Seasonal', 'assets/icons/seasonal.svg'),
                  _buildSkinCard('Tone', 'Cool', 'assets/icons/cool.svg'),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Advanced Skin Analysis Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xFF929292),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: SvgPicture.asset(
                      'assets/icons/advanced skin analysis.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Advanced Skin Analysis',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Identify your skin profile just with selfie!',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Tell us more card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: const Color(0xFFFFFCD9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/icons/tell us more.png',
                    width: 47,
                    height: 47,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tell us more about your situation',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Answer questions about your habits and preferences',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Profile sections
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  _buildProfileSection('Lifestyle Choices', 'Your preferences that impact your skincare choices', 'assets/icons/life style.svg', '0'),
                  _buildProfileSection('Forbidden Ingredients', 'Ingredients you want to avoid', 'assets/icons/forbidden ingredient.svg', '0'),
                  _buildProfileSection('Favorite Ingredients', 'Ingredients preferred by you', 'assets/icons/favourite ingredient.svg', '0'),
                  _buildProfileSection('Age', 'Your current age', 'assets/icons/age.svg', '23'),
                  _buildProfileSection('Melanin Level', 'Indicate your skin tone', 'assets/icons/melanin level.svg', '0'),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Log Out Button
            Center(
              child: Container(
                width: 200,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFB3748),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSkinCard(String title, String value, String assetPath) {
    return Container(
      width: 102,
      height: 105,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFD9EA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: 1,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
          const SizedBox(height: 4),
          SvgPicture.asset(assetPath, width: 40, height: 40),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 11,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection(String title, String subtitle, String iconAsset, String? value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 14),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFF929292),
          ),
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(iconAsset, width: 33, height: 33),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 8,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          if (value != null) ...[
            Text(
              value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
