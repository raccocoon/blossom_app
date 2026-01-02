import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/blossom_ui.dart';
import '../services/auth_service.dart';
import '../services/app_routes.dart';

class EnterMobilePage extends StatefulWidget {
  static const route = '/enter-mobile';
  const EnterMobilePage({super.key});

  @override
  State<EnterMobilePage> createState() => _EnterMobilePageState();
}

class _EnterMobilePageState extends State<EnterMobilePage> {
  final _formKey = GlobalKey<FormState>();
  final _mobile = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _mobile.dispose();
    super.dispose();
  }

  void _sendOTP() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _loading = true);

    try {
      // Format phone number with country code (+60 for Malaysia)
      String phoneNumber = _mobile.text.trim();
      if (!phoneNumber.startsWith('+')) {
        phoneNumber = '+60$phoneNumber'; // Add Malaysian country code
      }

      print('🔄 Sending OTP to: $phoneNumber');

      await AuthService.sendOTP(
        phoneNumber: phoneNumber,
        onCodeSent: (String verificationId) {
          print('✅ OTP sent successfully');
          setState(() => _loading = false);

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('OTP sent to your phone!'),
              backgroundColor: Colors.green,
            ),
          );

          // Navigate to OTP verification page
          Navigator.pushNamed(context, AppRoutes.verifyOtp);
        },
        onVerificationFailed: (FirebaseAuthException e) {
          print('❌ OTP sending failed: $e');
          setState(() => _loading = false);

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to send OTP: ${e.message}'),
              backgroundColor: Colors.red,
            ),
          );
        },
      );
    } catch (e) {
      print('❌ Error sending OTP: $e');
      setState(() => _loading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlossomColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, color: BlossomColors.black),
                ),
                const SizedBox(height: 16),
                const Text('Enter Mobile Number', style: BlossomTextStyles.h2),
                const SizedBox(height: 48),
                BlossomInput(
                  label: 'Mobile Number',
                  controller: _mobile,
                  hintText: '012-3456789',
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Mobile number is required';
                    }
                    // Remove any spaces, dashes, or other characters
                    String cleanNumber = value.replaceAll(RegExp(r'[^\d]'), '');
                    if (cleanNumber.length < 9 || cleanNumber.length > 11) {
                      return 'Enter a valid mobile number';
                    }
                    // Malaysian mobile numbers typically start with 01 and are 10-11 digits
                    if (!cleanNumber.startsWith('01') || cleanNumber.length < 10) {
                      return 'Enter a valid Malaysian mobile number';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                Text(
                  'Enter your mobile number to receive a verification code',
                  style: BlossomTextStyles.subtle,
                ),
                const SizedBox(height: 40),
                BlossomPrimaryButton(
                  text: _loading ? 'Sending...' : 'Send OTP',
                  onPressed: _loading ? null : _sendOTP,
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
