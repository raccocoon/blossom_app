import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

import 'services/app_routes.dart';
import 'widgets/app_scaffold.dart';
import 'widgets/loading_page.dart';
import 'widgets/onboarding_page.dart';
import 'auth/auth_shell.dart';
import 'admin_staff/admin_shell.dart';
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
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
            useMaterial3: true,
          ),
          home: _initialized ? const OnboardingPage() : const LoadingPage(),
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case AppRoutes.login:
                return MaterialPageRoute(builder: (_) => const AuthShell(title: 'Login'));
              case AppRoutes.signup:
                return MaterialPageRoute(builder: (_) => const AuthShell(title: 'Sign Up'));
              case AppRoutes.staffHome:
                return MaterialPageRoute(builder: (_) => const AdminShell(title: 'Staff Dashboard'));
              case AppRoutes.adminDashboard:
                return MaterialPageRoute(builder: (_) => const AdminShell(title: 'Admin Dashboard'));
              default:
                return MaterialPageRoute(
                  builder: (_) => Scaffold(
                    body: Center(
                      child: Text('Route not found: ${settings.name}'),
                    ),
                  ),
                );
            }
          },
        );
      },
    );
  }
}
