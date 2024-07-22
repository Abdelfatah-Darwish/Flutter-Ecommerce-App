import 'package:flutter/material.dart';

class SocialAccountButton extends StatelessWidget {
  const SocialAccountButton({
    super.key,
    this.onPressed,
    required this.iconImage,
  });

  final void Function()? onPressed;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 92,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconImage,
              height: 24,
              width: 23,
            ),
          ],
        ),
      ),
    );
  }
}
