import 'package:flutter/material.dart';

import '../home/notification_page.dart'; // Assuming this exists

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF4E4),
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 25,
        title: GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/profile'),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: const Color(0xFF633F05),
                child: const Icon(Icons.person, color: Colors.white),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Welcome back\nAriana!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Stack(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 28,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ),
                    );
                  },
                ),
                Positioned(
                  right: 4,
                  top: 6,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Points/Vouchers Card
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/points-rewards');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                height: 83,
                decoration: BoxDecoration(
                  color: const Color(0xFFC79287),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Stack(
                children: [
                  // Points section
                  Positioned(
                    left: 34.62,
                    top: 14,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '125',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                     ),
                    Text(
                      'Points',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w300,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
              ),

                  // Vouchers section
                  Positioned(
                    left: 125,
                    top: 16,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 27,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'Vouchers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w300,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // View Rewards button
                  Positioned(
                    right: 16,
                    top: 27,
                    child: Container(
                      width: 120,
                      height: 29,
                      decoration: BoxDecoration(
                        color: const Color(0xFF633F05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'View Rewards',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.336,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),

            const SizedBox(height: 16),
            // Upcoming Booking Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              height: 83,
              decoration: BoxDecoration(
                color: const Color(0xFFFFD8BE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 14.00,
                    child: const Text(
                      'Upcoming : Wed | 10:00 am',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Sansation',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 44,
                    child: const Text(
                      'Location:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Sansation',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 44,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/contact-info');
                      },
                      child: const Text(
                        'Century Plaza',
                        style: TextStyle(
                          color: Color(0xFF633F05),
                          fontSize: 15,
                          fontFamily: 'Sansation',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 250,
                    top: 30,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/past-bookings');
                      },
                      child: Container(
                        width: 87,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD39F81),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.48,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Deals Carousel
            SizedBox(
              height: 185,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  // DEAL 1 – Christmas Deals
                  _DealCard(
                    backgroundColor: const Color(0xFF566607),
                    title: 'Christmas Deals is\nOngoing !!',
                    pillText: 'Get free gift for every treatment',
                    imagePath: 'assets/images/deals1.png',
                  ),

                  // DEAL 2 – Bring Your Friend (LARGER IMAGE)
                  _DealCard(
                    backgroundColor: const Color(0xFF92D2E1),
                    title: 'Bring Your Friend\nor Family',
                    pillText: 'Get 5% off',
                    imagePath: 'assets/images/deals2.png',
                    textColor: Colors.black,
                    imageWidth: 180,
                    imageHeight: 175,
                  ),

                  // DEAL 3 – Look Awesome (LARGER IMAGE)
                  _DealCard(
                    backgroundColor: const Color(0xFFF4B1B1),
                    title: 'Look Awesome &\nSave Some',
                    pillText: 'Get Upto 50% off',
                    imagePath: 'assets/images/deals3.png',
                    textColor: Colors.black,
                    imageWidth: 180,
                    imageHeight: 175,
                  ),

                  // DEAL 4 – Awesomeness (LARGER IMAGE)
                  _DealCard(
                    backgroundColor: const Color(0xFF7DB359),
                    title: 'Bring the Awesomeness\nin You with Us',
                    pillText: 'RM 10 off for first timer',
                    imagePath: 'assets/images/deals4.png',
                    imageWidth: 180,
                    imageHeight: 175,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            // Catalog Title
            Container(
              margin: const EdgeInsets.only(left: 0),
              child: const Text(
                'Catalog',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.48,
                ),
              ),
            ),
            const SizedBox(height: 22),
            // Catalog Grid
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      // Body
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/body-catalog'),
                          child: Container(
                            height: 115,
                            margin: const EdgeInsets.only(right: 21),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/bodycatalog.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.35),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Body',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Facials
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/facial-catalog'),
                          child: Container(
                            height: 115,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/facialcatalog.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.35),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Facials',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  Row(
                    children: [
                      // Beauty
                      Expanded(
                        child: Container(
                          height: 115,
                          margin: const EdgeInsets.only(right: 21),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/beautycatalog.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.35),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Beauty',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Product
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              height: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/productcatalog.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.35),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Product',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 12,
                              child: const Text(
                                '(Coming soon)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),


    );
  }
}

class _DealCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String pillText;
  final String imagePath;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;

  const _DealCard({
    required this.backgroundColor,
    required this.title,
    required this.pillText,
    required this.imagePath,
    this.textColor = Colors.white,
    this.imageWidth = 155,
    this.imageHeight = 160,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // TEXT CONTENT
          Positioned(
            left: 16,
            top: 42,
            right: 160,
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontFamily: 'Sansation',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // PROMO PILL
          Positioned(
            left: 16,
            bottom: 20,
            child: SizedBox(
              width: 210,
              child: Container(
                height: 34,
                decoration: BoxDecoration(
                  color: const Color(0x99FFFFFF),
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Text(
                  pillText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Sansation',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),

          // IMAGE
          Positioned(
            right: 12,
            bottom: 0,
            child: Image.asset(
              imagePath,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
