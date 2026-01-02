import 'package:flutter/material.dart';
import '../widgets/blossom_ui.dart';
import '../routes/app_routes.dart';
import '../services/auth_service.dart';
import '../services/social_auth_service.dart';
import 'signup_name_email_page.dart';
import 'forgot_password_page.dart';
import 'package:blossom_app/pages/home/home_page.dart';

class LoginPage extends StatefulWidget {
  static const route = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    setState(() => _loading = true);

    try {
      final user = await AuthService.signInWithEmail(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );

      if (user != null && mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.home);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  void _forgotPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const ForgotPasswordPage()),
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
                const SizedBox(height: 60),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: BlossomColors.black),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text("Don't have an account? ", style: BlossomTextStyles.body),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const SignUpPage()),
                        );
                      },
                      child: const Text(
                        "SignUp",
                        style: TextStyle(color: BlossomColors.purple, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                BlossomInput(
                  label: 'Email',
                  hintText: 'cyinthia10@blossom.my',
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
                const SizedBox(height: 24),

                BlossomInput(
                  label: 'Password',
                  hintText: '********',
                  controller: _passwordController,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
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
                    onPressed: _loading ? null : _login,
                    child: Text(_loading ? 'Logging in...' : 'Login', style: const TextStyle(color: Colors.white)),
                  ),
                ),

                const SizedBox(height: 16),
                Center(
                  child: GestureDetector(
                    onTap: _forgotPassword,
                    child: const Text(
                      'Forgot your Password?',
                      style: TextStyle(color: BlossomColors.textDark, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                const _OrDivider(text: 'Or Login using'),

                const SizedBox(height: 24),

                SocialRow(
                  onTwitter: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Twitter login coming soon')),
                    );
                  },
                  onGoogle: () async {
                    try {
                      final user = await SocialAuthService.signInWithGoogle();
                      if (user != null && context.mounted) {
                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Google login failed: $e')),
                        );
                      }
                    }
                  },
                  onFacebook: () async {
                    try {
                      final user = await SocialAuthService.signInWithFacebook();
                      if (user != null && context.mounted) {
                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      }
                    } catch (e) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Facebook login failed: $e')),
                        );
                      }
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

class _OrDivider extends StatelessWidget {
  final String text;

  const _OrDivider({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFB9B9B9))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            text,
            style: BlossomTextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
              color: BlossomColors.textDark,
            ),
          ),
        ),
        const Expanded(child: Divider(color: Color(0xFFB9B9B9))),
      ],
    );
  }
}
