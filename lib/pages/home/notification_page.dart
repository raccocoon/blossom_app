import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../theme/app_colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Spacer(),
                  const Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Spacer(),
                  const SizedBox(width: 48),
                ],
              ),

              const SizedBox(height: 16),

              // New section
              const Text(
                'New',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),

              _NotiRow(
                icon: NotiIconCircle(
                  bgColor: const Color(0x614AD991),
                  icon: SvgPicture.asset(
                    'assets/icons/notification_success.svg',
                    width: 18,
                    height: 18,
                  ),
                ),
                title: 'Voucher Redeemed Successfully',
                subtitle:
                    'You successfully exchanges 100 Points for a 10% Off Facial Voucher.',
                time: '4 hours ago',
              ),

              const SizedBox(height: 22),

              // Last week section
              const Text(
                'Last Week',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),

              _NotiRow(
                icon: NotiIconCircle(
                  bgColor: const Color(0x66FBDE2F),
                  icon: SvgPicture.asset(
                    'assets/icons/notification_noti.svg',
                    width: 18,
                    height: 18,
                  ),
                ),
                title: 'Christmas Deal',
                subtitle: 'Get free gift on every treatments book via app.',
                time: 'last Monday',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NotiRow extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final String time;

  const _NotiRow({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NotiIconCircle extends StatelessWidget {
  final Color bgColor;
  final Widget icon;

  const NotiIconCircle({
    super.key,
    required this.bgColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}
