import 'package:flutter/material.dart';

import '../services/app_routes.dart';

// Onboarding data model
class OnboardingPageData {
  final String image;
  final String title;

  OnboardingPageData({
    required this.image,
    required this.title,
  });
}

// Onboarding pages list
final List<OnboardingPageData> onboardingPages = [
  OnboardingPageData(
    image: 'assets/images/onboarding_screen1.png',
    title: 'SPA only for\nWomen',
  ),
  OnboardingPageData(
    image: 'assets/images/onboarding_screen2.png',
    title: 'Providing you with\nAI Skin Analysis\nFeature',
  ),
  OnboardingPageData(
    image: 'assets/images/onboarding_screen3.jpg',
    title: 'Friendly Staffs\nto Serve you',
  ),
  OnboardingPageData(
    image: 'assets/images/onboarding_screen4.jpg',
    title: 'Comfortable\nSpace',
  ),
  OnboardingPageData(
    image: 'assets/images/onboarding_screen5.jpg',
    title: 'Affordable\nServices',
  ),
];

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingPages.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingSinglePage(
                data: onboardingPages[index],
              );
            },
          ),

          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: Column(
              children: [
                PageIndicator(
                  currentIndex: _currentIndex,
                  count: onboardingPages.length,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton(),
                    const SizedBox(width: 16),
                    SignUpButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Single onboarding page UI
class OnboardingSinglePage extends StatelessWidget {
  final OnboardingPageData data;

  const OnboardingSinglePage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          data.image,
          fit: BoxFit.cover,
        ),

        Container(
          color: Colors.black.withOpacity(0.35),
        ),

        Positioned(
          left: 52,
          top: 690,
          child: SizedBox(
            width: 343,
            height: 86,
            child: Text(
              data.title,
              style: const TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 0.25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Page indicator dots
class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int count;

  const PageIndicator({
    super.key,
    required this.currentIndex,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final positions = [203.0, 215.0, 227.0, 239.0, 249.0];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 8,
      child: Stack(
        children: List.generate(count, (index) {
          return Positioned(
            left: positions[index],
            top: 0,
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == currentIndex
                    ? Colors.white
                    : Colors.white.withOpacity(0.4),
              ),
            ),
          );
        }),
      ),
    );
  }
}

// Login button
class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 48,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.login);
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
        ),
        child: const Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 24 / 16, // line height 24sp for 16sp font size
            letterSpacing: 0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// Sign Up button
class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.signup);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6440FE),
          elevation: 0,
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            height: 24 / 16, // line height 24sp for 16sp font size
            letterSpacing: 0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
