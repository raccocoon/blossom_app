import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F2EC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/blossom_logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 40),
            const RotatingCircularLoader(),
          ],
        ),
      ),
    );
  }
}

class RotatingCircularLoader extends StatefulWidget {
  const RotatingCircularLoader({Key? key}) : super(key: key);

  @override
  State<RotatingCircularLoader> createState() =>
      _RotatingCircularLoaderState();
}

class _RotatingCircularLoaderState extends State<RotatingCircularLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(); // infinite rotation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: SizedBox(
        width: 40,
        height: 40,
        child: CircularProgressIndicator(
          value: 0.25, // size of the arc
          strokeWidth: 3,
          valueColor: const AlwaysStoppedAnimation(
            Color(0xFF6A7BFF), // blue arc
          ),
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
