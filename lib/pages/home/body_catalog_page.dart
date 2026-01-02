import 'package:flutter/material.dart';

class BodyCatalogPage extends StatelessWidget {
  const BodyCatalogPage({super.key});

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
          'Body Treatments',
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
              title: 'Body Massage',
              description: 'A therapeutic massage designed to relieve muscle tension, reduce stress, and promote overall relaxation.',
              duration: '60 Minutes',
              price: 'RM 120.00',
              imageUrl: 'https://placehold.co/249x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Milk Bath',
              description: 'A soothing soak in warm milk to hydrate skin, promote softness, and enhance natural glow.',
              duration: '70 Minutes',
              price: 'RM 70.00',
              imageUrl: 'https://placehold.co/249x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Body Scrub',
              description: 'An invigorating exfoliation treatment to remove dead skin cells, leaving your skin smooth, soft, and radiant.',
              duration: '45 Minutes',
              price: 'RM 80.00',
              imageUrl: 'https://placehold.co/249x166',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Whitening Body Mask',
              description: 'A specialized body mask formulated to lighten and even out skin tone, enhancing your skin\'s natural brightness.',
              duration: '60 Minutes',
              price: 'RM 100.00',
              imageUrl: 'https://placehold.co/249x166',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Herbal Sauna',
              description: 'Experience the purifying benefits of a sauna infused with aromatic herbs, promoting detoxification and skin rejuvenation.',
              duration: '30 Minutes',
              price: 'RM 50.00',
              imageUrl: 'https://placehold.co/230x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Flower Bath',
              description: 'Immerse yourself in a luxurious bath filled with fragrant flowers, providing a calming and aromatic experience for body and mind.',
              duration: '60 Minutes',
              price: 'RM 65.00',
              imageUrl: 'https://placehold.co/249x139',
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
