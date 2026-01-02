import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          'Settings',
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
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 47),

            // Profile Picture
            Center(
              child: Container(
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
            ),

            const SizedBox(height: 24),

            // Profile Info
            const Center(
              child: Column(
                children: [
                  Text(
                    'Ariana',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
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

            const SizedBox(height: 24),

            // Edit button
            Align(
              alignment: Alignment.centerRight,
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

            const SizedBox(height: 24),

            // Settings sections
            Container(
              child: Column(
                children: [
                  // Username section
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 27,
                          height: 27,
                          child: IconButton(
                            icon: const Icon(Icons.edit, size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Divider
                  Container(
                    height: 1,
                    color: Colors.white.withOpacity(0.2),
                    margin: const EdgeInsets.symmetric(vertical: 12),
                  ),

                  // Password section
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 27,
                          height: 27,
                          child: IconButton(
                            icon: const Icon(Icons.edit, size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Email section
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 27,
                          height: 27,
                          child: IconButton(
                            icon: const Icon(Icons.edit, size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Phone Number section
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Phone Number',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: 27,
                          height: 27,
                          child: IconButton(
                            icon: const Icon(Icons.edit, size: 20),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
