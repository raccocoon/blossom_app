import 'package:flutter/material.dart';

class BookingShell extends StatelessWidget {
  const BookingShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Booking', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          const Text('Upcoming/Past bookings, cancel/reschedule'),
        ],
      ),
    );
  }
}
