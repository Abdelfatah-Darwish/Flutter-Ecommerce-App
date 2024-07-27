import 'package:e_commerce_app/utilities/styles.dart';
import 'package:e_commerce_app/views/widgets/image_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ImageWithText(),
        SizedBox(height: 37),
        TextRow(),
      ],
    );
  }
}

class TextRow extends StatelessWidget {
  const TextRow({super.key});

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
