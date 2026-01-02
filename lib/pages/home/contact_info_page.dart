import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfoPage extends StatelessWidget {
  const ContactInfoPage({super.key});

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
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // Title
            const Center(
              child: Text(
                'Contact Info',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 32),

            _contactRow(
              icon: 'assets/icons/contactinfo_mappin.png',
              text: 'Century Plaza',
            ),
            const SizedBox(height: 20),

            GestureDetector(
              onTap: () => _launchWhatsApp('+601160831043'),
              child: _contactRow(
                icon: 'assets/icons/contactinfo_phone.png',
                text: '+60 11-6083 1043',
              ),
            ),
            const SizedBox(height: 20),

            _contactRow(
              icon: 'assets/icons/contactinfo_facebook.png',
              text: 'Annis BeautyCare',
            ),
            const SizedBox(height: 20),

            _contactRow(
              icon: 'assets/icons/contactinfo_insta.png',
              text: 'blossombeautywellness',
            ),

            const SizedBox(height: 48),

            // Hours
            const Text(
              'Hours',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 24),

            _hourRow('Mon', 'Closed'),
            _hourRow('Tue - Sat', '9:00 am - 5:30 pm'),
            _hourRow('Sat', '9:00 am - 4:30 pm'),

            const SizedBox(height: 48),

            // View Location Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/location-searched');
                },
                child: const Text(
                  'View Location',
                  style: TextStyle(
                    color: Color(0xFFFFF4E4),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),

            const Center(
              child: Text(
                'Women Only',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 8),

            const Center(
              child: Text(
                'Terms & Condition',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  static Widget _contactRow({
    required String icon,
    required String text,
  }) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 18,
          height: 18,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
            color: Color(0xFF1C1C28),
          ),
        ),
      ],
    );
  }

  static Widget _hourRow(String day, String time) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Text(
              day,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _launchWhatsApp(String phoneNumber) async {
    // Remove any non-numeric characters and ensure it starts with country code
    String cleanNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    // WhatsApp URL format: https://wa.me/{phone_number}
    final Uri whatsappUrl = Uri.parse('https://wa.me/$cleanNumber');

    try {
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
      } else {
        // Fallback to WhatsApp URL scheme
        final Uri fallbackUrl = Uri.parse('whatsapp://send?phone=$cleanNumber');
        if (await canLaunchUrl(fallbackUrl)) {
          await launchUrl(fallbackUrl, mode: LaunchMode.externalApplication);
        } else {
          // If WhatsApp is not installed, show an error message
          debugPrint('Could not launch WhatsApp');
        }
      }
    } catch (e) {
      debugPrint('Error launching WhatsApp: $e');
    }
  }
}
