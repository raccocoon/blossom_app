import 'package:flutter/material.dart';

class BeautyCatalogPage extends StatelessWidget {
  const BeautyCatalogPage({super.key});

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
          'Beauty Treatments',
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
              title: 'Keratin Lash Lift',
              description: 'A semi-permanent treatment that curls and lifts your natural lashes, making them appear longer and fuller.',
              duration: '60 Minutes',
              price: 'RM 90.00',
              imageUrl: 'https://placehold.co/294x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Lash Extension',
              description: 'Individual lash extensions are applied to enhance the length, volume, and curl of your natural eyelashes',
              duration: '120 Minutes',
              price: 'RM 160.00',
              imageUrl: 'https://placehold.co/230x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Hand Spa',
              description: 'A rejuvenating treatment for your hands, including exfoliation, massage, and moisturizing to leave them soft and smooth.',
              duration: '45 Minutes',
              price: 'RM 60.00',
              imageUrl: 'https://placehold.co/230x153',
              onBookNow: () => _navigateToBooking(context),
            ),
            const SizedBox(height: 16),

            _buildServiceCard(
              title: 'Foot Spa',
              description: 'A relaxing and revitalizing treatment for your feet, including soaking, exfoliation, massage, and moisturizing.',
              duration: '50 Minutes',
              price: 'RM 65.00',
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
              width: 230,
              height: 153,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
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
