import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';
import '../services/auth_service.dart';
import '../services/social_auth_service.dart';
import '../services/app_routes.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  static const route = '/signup';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _confirmPassword.dispose();
    super.dispose();
  }

  void _handleSignUp() async {
    print('=== SIGN UP BUTTON PRESSED ===');
    print('Loading state: $_loading');

    if (!_formKey.currentState!.validate()) {
      print('❌ Form validation failed');
      return;
    }

    print('✅ Form validation passed');
    setState(() => _loading = true);

    try {
      print('🔄 Calling Firebase sign up...');
      await AuthService.signUpWithEmail(
        email: _email.text.trim(),
        password: _password.text,
      );

      print('✅ Firebase sign up successful');
      setState(() => _loading = false);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sign up successful!'),
          backgroundColor: Colors.green,
        ),
      );

      // Navigate to next step (phone verification)
      Navigator.pushNamed(context, AppRoutes.enterMobile);
    } catch (e) {
      print('❌ Firebase sign up failed: $e');
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
                const SizedBox(height: 14),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back, color: BlossomColors.black),
                ),
                const SizedBox(height: 6),
                const Text('SignUp', style: BlossomTextStyles.h1),
                const SizedBox(height: 18),

                Row(
                  children: [
                    Text(
                      'Already have an Account? ',
                      style: BlossomTextStyles.body,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 48),

                /// NAME
                BlossomInput(
                  label: 'Name',
                  hintText: 'Ariana',
                  controller: _name,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Name is required';
                    }
                    if (value.trim().length < 2) {
                      return 'Name must be at least 2 characters';
                    }
                    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                      return 'Name can only contain letters';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                /// EMAIL
                BlossomInput(
                  label: 'Email',
                  hintText: 'ariana@gmail.com',
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Email is required';
                    }
                    final emailRegex =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                /// PASSWORD
                BlossomInput(
                  label: 'Password',
                  hintText: '********',
                  controller: _password,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)').hasMatch(value)) {
                      return 'Include 1 uppercase letter and 1 number';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                /// CONFIRM PASSWORD
                BlossomInput(
                  label: 'Re-Type Password',
                  hintText: '********',
                  controller: _confirmPassword,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please re-type your password';
                    }
                    if (value != _password.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 40),

                /// SIGN UP BUTTON
                BlossomPrimaryButton(
                  text: _loading ? 'Please wait...' : 'SignUp',
                  onPressed: _loading ? null : _handleSignUp,
                ),

                const SizedBox(height: 80),

                /// SOCIAL LOGIN
                const OrDivider(text: 'Or SignUp using'),
                const SizedBox(height: 36),

                SocialRow(
                  onTwitter: () async {
                    try {
                      final user = await SocialAuthService.signInWithTwitter();
                      if (user != null) {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
                      );
                    }
                  },
                  onGoogle: () async {
                    try {
                      final user = await SocialAuthService.signInWithGoogle();
                      if (user != null) {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
                      );
                    }
                  },
                  onFacebook: () async {
                    try {
                      final user = await SocialAuthService.signInWithFacebook();
                      if (user != null) {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
                      );
                    }
                  },
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
