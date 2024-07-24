import 'package:e_commerce_app/views/widgets/social_account_button.dart';
import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Text(
            'Or login with social account',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 16),
            SocialAccountButton(
              iconImage: 'assets/images/google.png',
            ),
            SizedBox(width: 16),
            SocialAccountButton(
              iconImage: 'assets/images/facebook.png',
            ),
            SizedBox(width: 16),
          ],
        ),
      ],
    );
  }
}
