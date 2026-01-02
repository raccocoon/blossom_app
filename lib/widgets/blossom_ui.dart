import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlossomColors {
  static const bg = Color(0xFFFFF5E5);
  static const black = Color(0xFF000000);
  static const textDark = Color(0xFF121212);
  static const hint = Color(0x99121212);
  static const border = Color(0x33121212);
  static const purple = Color(0xFF6440FE);
}

class BlossomTextStyles {
  static const h1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    color: BlossomColors.black,
    height: 1.1,
  );

  static const h2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: BlossomColors.black,
    height: 1.1,
  );

  static const label = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: BlossomColors.textDark,
  );

  static const body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: BlossomColors.textDark,
  );

  static const subtle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF7A7A7A),
  );
}

class BlossomPrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;

  const BlossomPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<BlossomPrimaryButton> createState() => _BlossomPrimaryButtonState();
}

class _BlossomPrimaryButtonState extends State<BlossomPrimaryButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  void _onTapCancel() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        onTap: widget.onPressed,
        child: AnimatedBuilder(
          animation: _scaleAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                decoration: BoxDecoration(
                  color: BlossomColors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BlossomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BlossomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: BlossomColors.black, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: BlossomColors.black,
          ),
        ),
      ),
    );
  }
}

class BlossomInput extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const BlossomInput({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: BlossomTextStyles.label),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: BlossomColors.bg,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: BlossomColors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: BlossomColors.black),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}

class SocialRow extends StatelessWidget {
  final VoidCallback? onTwitter;
  final VoidCallback? onGoogle;
  final VoidCallback? onFacebook;

  const SocialRow({
    super.key,
    required this.onTwitter,
    required this.onGoogle,
    required this.onFacebook,
  });

  Widget _item({
    required String asset,
    required String label,
    required Color labelColor,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 120,
        child: Column(
          children: [
            SizedBox(
              height: 56,
              width: 56,
              child: SvgPicture.asset(asset),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: labelColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _item(
          asset: 'assets/icons/twitter_logo.svg',
          label: 'Twitter',
          labelColor: const Color(0xFF03A9F4),
          onTap: onTwitter,
        ),
        _item(
          asset: 'assets/icons/google_logo.svg',
          label: 'Google',
          labelColor: const Color(0xFF1976D2),
          onTap: onGoogle,
        ),
        _item(
          asset: 'assets/icons/facebook_logo.svg',
          label: 'Facebook',
          labelColor: const Color(0xFF3F51B4),
          onTap: onFacebook,
        ),
      ],
    );
  }
}

class OrDivider extends StatelessWidget {
  final String text;

  const OrDivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 1, color: const Color(0xFFB9B9B9))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            text,
            style: BlossomTextStyles.body.copyWith(
              fontWeight: FontWeight.w600,
              color: BlossomColors.textDark,
            ),
          ),
        ),
        Expanded(child: Container(height: 1, color: const Color(0xFFB9B9B9))),
      ],
    );
  }
}
