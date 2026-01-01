import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'services/app_routes.dart';
import 'admin_staff/admin_shell.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BlossomAdminApp());
}

class BlossomAdminApp extends StatelessWidget {
  const BlossomAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blossom Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.adminDashboard,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.adminDashboard:
          case AppRoutes.staffHome:
            return MaterialPageRoute(
              builder: (_) => const AdminShell(title: 'Admin Dashboard (Web)'),
            );
          default:
            return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                  child: Text('Admin route not found: ${settings.name}'),
                ),
              ),
            );
        }
      },
    );
  }
}
