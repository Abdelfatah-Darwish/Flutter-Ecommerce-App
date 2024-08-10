import 'package:e_commerce_app/views/widgets/sale_list_view_item.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    // final items = List.generate(10, (index) => 'Item $index'); // Sample data

    return SizedBox(
      height: MediaQuery.of(context).size.height * (260 / 812),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: SaleListViewItem(),
          );
        },
      ),
    );
  }
}

