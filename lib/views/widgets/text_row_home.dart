import 'package:e_commerce_app/utilities/styles.dart';
import 'package:flutter/material.dart';

class TextRowHome extends StatelessWidget {
  const TextRowHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sale',
                style: Styles.textStyle_34Black,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'View all',
                  style: Styles.textStyle_11Black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            'Super summer sale',
            style: Styles.textStyle_11Gray,
          ),
        ],
      ),
    );
  }
}
