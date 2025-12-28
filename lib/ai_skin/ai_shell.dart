import 'package:flutter/material.dart';

class AiShell extends StatelessWidget {
  const AiShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Facial AI', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          const Text('Camera/Gallery upload, send to AI, show recommendations'),
        ],
      ),
    );
  }
}
