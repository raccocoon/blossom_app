import 'package:flutter/material.dart';

import 'services/app_routes.dart';
import 'widgets/app_scaffold.dart';
import 'auth/auth_shell.dart';
import 'admin_staff/admin_shell.dart';

void main() {
  runApp(const BlossomApp());
}

class BlossomApp extends StatelessWidget {
  const BlossomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blossom Beauty & Wellness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.home:
            return MaterialPageRoute(builder: (_) => const AppScaffold());
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
  }
}
