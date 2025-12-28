import 'package:flutter/material.dart';

class AdminShell extends StatelessWidget {
  const AdminShell({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            const Text('Service catalog, staff/users, marketing, settings'),
          ],
        ),
      ),
    );
  }
}
