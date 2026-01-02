import 'package:flutter/material.dart';

class PointsRewardsPage extends StatelessWidget {
  const PointsRewardsPage({super.key});

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
          'Points & Rewards',
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBalanceCard(context),
            const SizedBox(height: 24),

            const Text(
              'How to Earn Points',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),

            _buildEarningPoint(
              number: '1',
              title: 'Booking to Earn Points: ',
              description: 'Earn 1 Point for every RM 5 spent.',
            ),
            _buildEarningPoint(
              number: '2',
              title: 'Product Purchase: ',
              description: 'Earn 5 Points per product item.',
            ),
            _buildEarningPoint(
              number: '3',
              title: 'Refer a Friend: ',
              description: 'Get 50 Bonus Points when they book.',
            ),

            const SizedBox(height: 24),

            const Text(
              'Redeem Your Points',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),

            _buildRewardItem(
              title: '10% OFF Any Facial',
              cost: 'Cost: 100 Points',
              description: 'Limit 1 per customer.',
              canRedeem: true,
            ),
            _buildRewardItem(
              title: 'Free Eye Mask Add-on',
              cost: 'Cost: 150 Points',
              description: 'Insufficient Points',
              canRedeem: false,
            ),
            _buildRewardItem(
              title: 'RM10 Off Product Purchase',
              cost: 'Cost: 100 Points',
              description: 'Minimum purchase RM 80',
              canRedeem: true,
            ),
            _buildRewardItem(
              title: 'Free Any Facial',
              cost: 'Cost: 1000 Points',
              description: 'Insufficient Points',
              canRedeem: false,
            ),
            _buildRewardItem(
              title: '10% OFF Any Beauty',
              cost: 'Cost: 100 Points',
              description: 'Limit 1 per customer.',
              canRedeem: true,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceCard(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 172,
      decoration: BoxDecoration(
        color: const Color(0xFFFFD8BE),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 32,
            child: Text(
              'Your Current Balance',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 60,
            top: 64,
            child: Text(
              '125',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 32,
            child: Text(
              'Points',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 64,
            child: Text(
              'Expires: 31/12/2025',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 84,
            child: Text(
              'Ref. num: AR!4N4',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Color(0xFF633F05),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 16,
            right: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/points-history');
              },
              child: SizedBox(
                height: 34,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Center(
                    child: Text(
                      'Points History',
                      style: TextStyle(
                        fontSize: 15,
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
    );
  }

  Widget _buildEarningPoint({
    required String number,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Color(0xFFFFD8BE),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              number,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: description,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardItem({
    required String title,
    required String cost,
    required String description,
    required bool canRedeem,
  }) {
    return Container(
      width: double.infinity,
      height: 92,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: canRedeem
            ? const Color(0xFFE6E1D9)
            : const Color(0xFFDAD6CE),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 12,
            top: 10,
            right: 100,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 40,
            child: Text(
              cost,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                color: canRedeem
                    ? const Color(0xFFCA6E3A)
                    : const Color(0xFF7A7A7A),
              ),
            ),
          ),
          Positioned(
            left: 12,
            top: 58,
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: 32,
            child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                color: canRedeem
                    ? const Color(0xFFF89156)
                    : const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                'Redeem',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                  color: canRedeem
                      ? Colors.white
                      : const Color(0xFF9E9E9E),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
