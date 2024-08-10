import 'package:e_commerce_app/views/widgets/image_with_text.dart';
import 'package:e_commerce_app/views/widgets/item_list.dart';
import 'package:e_commerce_app/views/widgets/text_row_home.dart';
import 'package:flutter/material.dart';
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
        TextRowHome(),
        SizedBox(height: 22),
        ItemList(),
      ],
    );
  }
}
