import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';
import '../services/auth_service.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _loading = false;
  bool _emailSent = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _resetPassword() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _loading = true);

    try {
      final email = _emailController.text.trim();
      print('🔄 Attempting to send password reset email to: $email');

      await AuthService.sendPasswordResetEmail(email);

      print('✅ Password reset email sent successfully to: $email');
      setState(() => _emailSent = true);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password reset link sent to your email! Check your inbox (and spam folder).'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
        ),
      );
    } catch (e) {
      print('❌ Password reset failed: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 4),
        ),
      );
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BlossomColors.bg,
      appBar: AppBar(
        backgroundColor: BlossomColors.bg,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: BlossomColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Reset Password',
          style: TextStyle(color: BlossomColors.black, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: _emailSent ? _successView() : _resetForm(),
        ),
      ),
    );
  }

  Widget _resetForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const Text(
          'Forgot your password?',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: BlossomColors.black),
        ),
        const SizedBox(height: 16),
        Text(
          'Enter your email address and we\'ll send you a link to reset your password.',
          style: BlossomTextStyles.body,
        ),
        const SizedBox(height: 40),

        Form(
          key: _formKey,
          child: BlossomInput(
            label: 'Email',
            hintText: 'Enter your email address',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Email is required';
              }
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
            },
          ),
        ),

        const SizedBox(height: 40),

        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: BlossomColors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: _loading ? null : _resetPassword,
            child: Text(
              _loading ? 'Sending...' : 'Send Reset Link',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _successView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 40,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Check your email!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: BlossomColors.black),
          ),
          const SizedBox(height: 16),
          Text(
            'We\'ve sent a password reset link to\n${_emailController.text}',
            textAlign: TextAlign.center,
            style: BlossomTextStyles.body,
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 200,
            height: 48,
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: BlossomColors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Back to Login'),
            ),
          ),
        ],
      ),
    );
  }
}
