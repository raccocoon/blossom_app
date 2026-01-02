import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class OrDivider extends StatelessWidget {
  final String text;
  const OrDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.divider, thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(text, style: const TextStyle(color: AppColors.textSecondary, fontWeight: FontWeight.w600)),
        ),
        const Expanded(child: Divider(color: AppColors.divider, thickness: 1)),
      ],
    );
  }
}
