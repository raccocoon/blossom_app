import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/loading_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F2EC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/blossom_logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 40),

            // Connect button or loading indicator
            if (_isLoading)
              const RotatingCircularLoader()
            else
              Container(
                width: 125,
                height: 52,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2A89E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: TextButton(
                  onPressed: _handleConnect,
                  child: const Text(
                    'Connect',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _handleConnect() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate loading for 2 seconds
    await Future.delayed(const Duration(seconds: 2));

    // Launch WhatsApp
    await _launchWhatsApp();

    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _launchWhatsApp() async {
    String phoneNumber = '+601160831043';
    String cleanNumber = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    final Uri whatsappUrl = Uri.parse('https://wa.me/$cleanNumber');

    try {
      if (await canLaunchUrl(whatsappUrl)) {
        await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
      } else {
        final Uri fallbackUrl = Uri.parse('whatsapp://send?phone=$cleanNumber');
        if (await canLaunchUrl(fallbackUrl)) {
          await launchUrl(fallbackUrl, mode: LaunchMode.externalApplication);
        } else {
          debugPrint('Could not launch WhatsApp');
        }
      }
    } catch (e) {
      debugPrint('Error launching WhatsApp: $e');
    }
  }
}
