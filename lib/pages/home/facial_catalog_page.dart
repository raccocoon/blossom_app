import 'package:flutter/material.dart';

class FacialCatalogPage extends StatelessWidget {
  const FacialCatalogPage({super.key});

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
          'Facial Treatments',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildServiceCard(
              title: 'Signature Facial',
              description: 'A customized facial treatment tailored to your skin\'s specific needs, including cleansing, exfoliation, mask, and moisturizing for a refreshed complexion.',
              duration: '90 Minutes',
              price: 'RM 150.00',
              imageUrl: 'https://placehold.co/249x139',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Lifting Facial',
              description: 'A specialized facial designed to lift and tone the skin, improving contours and promoting a more youthful appearance.',
              duration: '80 Minutes',
              price: 'RM 170.00',
              imageUrl: 'https://placehold.co/249x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Collagen Facial',
              description: 'An anti-aging facial focused on boosting collagen production to improve skin elasticity, reduce fine lines, and firm the skin.',
              duration: '75 Minutes',
              price: 'RM 180.00',
              imageUrl: 'https://placehold.co/249x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Whitening Facial',
              description: 'A targeted facial treatment to brighten skin tone, reduce hyperpigmentation, and achieve a luminous complexion.',
              duration: '70 Minutes',
              price: 'RM 140.00',
              imageUrl: 'https://placehold.co/230x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Acne Facial',
              description: 'A purifying facial treatment to address breakouts, reduce inflammation, and improve the clarity of acne-prone skin.',
              duration: '60 Minutes',
              price: 'RM 130.00',
              imageUrl: 'https://placehold.co/230x153',
              onBookNow: () => _navigateToBooking(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required String description,
    required String duration,
    required String price,
    required String imageUrl,
    required VoidCallback onBookNow,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDDD8A3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Service Image
          Center(
            child: Container(
              width: 249,
              height: 153,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 1,
                    offset: Offset(0, 0),
                  ),
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Service Title
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFF79219),
              fontSize: 24,
              fontFamily: 'DM Serif Text',
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 8),

          // Description
          Text(
            description,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 16),

          // Duration
          Text(
            'Estimate Treatment Time: $duration',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 8),

          // Price
          Text(
            'Price: $price',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 16),

          // Book Now Button
          Center(
            child: Container(
              width: 129,
              height: 35,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: TextButton(
                onPressed: onBookNow,
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToBooking(BuildContext context) {
    Navigator.pushNamed(context, '/booking');
  }
}
