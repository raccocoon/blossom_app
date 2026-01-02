import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';
import '../services/auth_service.dart';
import '../services/app_routes.dart';

class VerifyOtpPage extends StatefulWidget {
  static const route = '/verify-otp';
  const VerifyOtpPage({super.key});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  final _formKey = GlobalKey<FormState>();
  final _otp = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _otp.dispose();
    super.dispose();
  }

  void _verifyOTP() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _loading = true);

    try {
      print('🔄 Verifying OTP: ${_otp.text}');

      final user = await AuthService.verifyOTP(_otp.text);

      print('✅ OTP verified successfully');
      setState(() => _loading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OTP verified successfully!'),
          backgroundColor: Colors.green,
        ),
      );

      // Navigate to OTP verified page
      Navigator.pushReplacementNamed(context, AppRoutes.otpVerified);
    } catch (e) {
      print('❌ OTP verification failed: $e');
      setState(() => _loading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Invalid OTP: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _resendOTP() async {
    // Go back to mobile entry page to allow re-entering phone number
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please re-enter your mobile number to resend OTP'),
        backgroundColor: Colors.blue,
      ),
    );
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
                  icon: const Icon(Icons.arrow_back, color: BlossomColors.black),
                ),
                const SizedBox(height: 10),
                const Text('Verify OTP', style: BlossomTextStyles.h2),
                const SizedBox(height: 20),
                Text(
                  'Enter the 6-digit code sent to your phone',
                  style: BlossomTextStyles.body,
                ),
                const SizedBox(height: 70),
                Center(
                  child: SizedBox(
                    width: 320,
                  child: TextFormField(
                      controller: _otp,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      style: BlossomTextStyles.h1.copyWith(color: BlossomColors.black),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'OTP is required';
                        }
                        if (value.length != 6) {
                          return 'OTP must be 6 digits';
                        }
                        if (!RegExp(r'^\d{6}$').hasMatch(value)) {
                          return 'OTP must contain only numbers';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: '000000',
                        hintStyle: BlossomTextStyles.h1.copyWith(color: BlossomColors.hint),
                        filled: true,
                        fillColor: BlossomColors.bg,
                        counterText: '', // Hide character counter
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: BlossomColors.border, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: BlossomColors.black, width: 1),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Didn't Receive the Code? ", style: BlossomTextStyles.subtle),
                      GestureDetector(
                        onTap: _resendOTP,
                        child: const Text(
                          'Resend',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: BlossomColors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                BlossomPrimaryButton(
                  text: _loading ? 'Verifying...' : 'Verify OTP',
                  onPressed: _loading ? null : _verifyOTP,
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
