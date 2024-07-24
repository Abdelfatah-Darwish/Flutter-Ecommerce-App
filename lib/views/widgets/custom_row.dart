import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String displayText;
  final VoidCallback onTap;

  const CustomRow({
    super.key,
    required this.displayText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: displayText.contains('account')
          ? MainAxisAlignment.center
          : MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: onTap,
          child: Text(
            displayText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        Icon(
          Icons.arrow_right_alt_rounded,
          size: 24,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
