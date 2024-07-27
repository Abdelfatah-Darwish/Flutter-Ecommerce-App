import 'package:e_commerce_app/utilities/styles.dart';
import 'package:flutter/material.dart';

class ImageWithText extends StatelessWidget {
  const ImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight * 196 / 812; // 196% of screen height

    return Stack(
      children: [
        // Image taking full width of the screen and 196% of the screen height
        Container(
          width: double.infinity,
          height: imageHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/home_image.jpg'), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          width: double.infinity,
          height: imageHeight,
          color: Colors.black.withOpacity(0.12),
        ),

        Positioned(
          bottom: 16, // Adjust as necessary
          left: 26, // Adjust as necessary
          child: Text(
            'Street clothes',
            style: Styles.textStyle_34White,
          ),
        ),
      ],
    );
  }
}
