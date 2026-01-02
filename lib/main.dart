import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

import 'routes/app_routes.dart';
import 'theme/app_theme.dart';
import 'widgets/loading_page.dart';
import 'widgets/onboarding_page.dart';
import 'services/auth_service.dart';
import 'pages/home/home_shell.dart';

import 'auth/login_page.dart';
import 'auth/signup_name_email_page.dart';
import 'auth/enter_mobile_page.dart';
import 'auth/verify_otp_page.dart';
import 'auth/otp_verified_page.dart';
import 'auth/signup_complete_page.dart';

import 'pages/home/points_rewards_page.dart';
import 'pages/home/points_history_page.dart';
import 'pages/home/past_bookings_page.dart';
import 'pages/home/contact_info_page.dart';
import 'pages/home/location_searched_page.dart';
import 'pages/home/profile_page.dart';
import 'pages/home/settings_page.dart';
import 'pages/home/body_catalog_page.dart';
import 'pages/home/facial_catalog_page.dart';
import 'pages/home/beauty_catalog_page.dart';
import 'pages/home/notification_page.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BlossomApp());
}

class BlossomApp extends StatefulWidget {
  const BlossomApp({super.key});

  @override
  State<BlossomApp> createState() => _BlossomAppState();
}

class _BlossomAppState extends State<BlossomApp> {
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e) {
      // Handle unsupported platforms or missing config
      debugPrint('Firebase initialization failed: $e');
    }
    // Add delay to see loading page (remove in production)
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _initialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X size, adjust as needed
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Blossom Beauty & Wellness',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          home: _initialized ? const OnboardingPage() : const LoadingPage(),
          routes: {
            AppRoutes.login: (_) => const LoginPage(),
            AppRoutes.signup: (_) => const SignUpPage(),
            AppRoutes.enterMobile: (_) => const EnterMobilePage(),
            AppRoutes.verifyOtp: (_) => const VerifyOtpPage(),
            AppRoutes.otpVerified: (_) => const OtpVerifiedPage(),
            AppRoutes.signupComplete: (_) => const SignUpCompletePage(),

            AppRoutes.home: (_) => const HomeShell(),
            AppRoutes.pointsRewards: (_) => const PointsRewardsPage(),
            AppRoutes.pointsHistory: (_) => const PointsHistoryPage(),
            AppRoutes.pastBookings: (_) => const PastBookingsPage(),
            AppRoutes.contactInfo: (_) => const ContactInfoPage(),
            AppRoutes.locationSearched: (_) => const LocationSearchedPage(),
            AppRoutes.profile: (_) => const ProfilePage(),
            AppRoutes.settings: (_) => const SettingsPage(),
            AppRoutes.bodyCatalog: (_) => const BodyCatalogPage(),
            AppRoutes.facialCatalog: (_) => const FacialCatalogPage(),
            AppRoutes.beautyCatalog: (_) => const BeautyCatalogPage(),
            AppRoutes.notifications: (_) => const NotificationPage(),
          },
        );
      },
    );
  }
}
